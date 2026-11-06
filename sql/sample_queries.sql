-- 1. Monthly sales, profit and margin
SELECT d.month_start, ROUND(SUM(s.total_sales)) AS sales, ROUND(SUM(s.profit)) AS gross_profit,
       ROUND(100.0*SUM(s.profit)/SUM(s.total_sales),1) AS margin_pct
FROM fact_sales s JOIN dim_date d USING(date_id) GROUP BY d.month_start ORDER BY 1;

-- 2. Top 10 products by profit
SELECT p.product_name, ROUND(SUM(s.profit)) AS profit FROM fact_sales s JOIN dim_product p USING(product_id)
GROUP BY p.product_name ORDER BY profit DESC LIMIT 10;

-- 3. Best day of the week (average sales per trading day)
SELECT day_name, ROUND(SUM(total_sales)*1.0/COUNT(DISTINCT s.date_id)) AS avg_daily_sales
FROM fact_sales s JOIN dim_date USING(date_id) GROUP BY day_name ORDER BY avg_daily_sales DESC;

-- 4. Customer lifetime value, credit exposure and who has gone quiet
SELECT customer_name, total_spent, money_owed, customer_status FROM dim_customer
WHERE customer_name <> 'WALK-IN' ORDER BY total_spent DESC;

-- 5. Cost-price inflation per product (latest vs previous cost per pack)
SELECT p.product_name, latest_cost_per_pack, previous_cost_per_pack,
       ROUND(100.0*(latest_cost_per_pack/previous_cost_per_pack-1),1) AS change_pct
FROM snapshot_stock k JOIN dim_product p USING(product_id)
WHERE previous_cost_per_pack > 0 ORDER BY change_pct DESC LIMIT 10;

-- 6. Stock reconciliation: closing stock = opening + movements - sales (should equal current_stock)
SELECT p.product_name, k.current_stock,
       COALESCE(m.eff,0) - COALESCE(s.sold,0) AS recomputed
FROM snapshot_stock k JOIN dim_product p USING(product_id)
LEFT JOIN (SELECT product_id, SUM(stock_effect) eff FROM fact_stock_movements GROUP BY 1) m USING(product_id)
LEFT JOIN (SELECT product_id, SUM(pieces_sold) sold FROM fact_sales GROUP BY 1) s USING(product_id);

-- 7. Shrinkage: value lost to breakage, leakage, count losses and personal use
SELECT movement_type, ROUND(SUM(loss_personal_use_value)) AS value_at_cost
FROM fact_stock_movements WHERE movement_group IN ('LOSS','PERSONAL') GROUP BY 1 ORDER BY 2 DESC;
