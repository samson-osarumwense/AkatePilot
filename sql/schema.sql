-- AkatePilot: star-schema for the anonymised dataset (SQLite / PostgreSQL / MySQL friendly)
CREATE TABLE dim_store    (store_id TEXT PRIMARY KEY, store_name TEXT, store_type TEXT, country TEXT, opening_hours TEXT,
                           sunday_pattern TEXT, power_source TEXT, monthly_rent NUMERIC, paid_staff INTEGER, currency TEXT);
CREATE TABLE dim_product  (product_id TEXT PRIMARY KEY, product_name TEXT UNIQUE, category TEXT, subcategory TEXT, container TEXT,
                           alcoholic TEXT, pack_type TEXT, pieces_per_pack NUMERIC, retail_price_per_piece NUMERIC,
                           wholesale_price_per_pack NUMERIC, reorder_level NUMERIC, source TEXT);
CREATE TABLE dim_customer (customer_id TEXT PRIMARY KEY, customer_name TEXT UNIQUE, customer_type_choose TEXT, first_purchase DATE,
                           last_purchase DATE, visits INTEGER, total_spent NUMERIC, profit_made_from_customer NUMERIC,
                           credit_taken NUMERIC, credit_repaid NUMERIC, money_owed NUMERIC, customer_status TEXT, customer_segment TEXT);
CREATE TABLE dim_supplier (supplier_id TEXT PRIMARY KEY, supplier_name TEXT UNIQUE, first_purchase DATE, last_purchase DATE,
                           number_of_purchases INTEGER, total_spent NUMERIC);
CREATE TABLE dim_date     (date_id INTEGER PRIMARY KEY, date DATE, year INTEGER, quarter TEXT, month_no INTEGER, month_name TEXT,
                           month_start DATE, week_start DATE, week_no INTEGER, day_no INTEGER, day_name TEXT, weekend TEXT, trading_pattern TEXT);
CREATE TABLE fact_sales   (sale_id TEXT PRIMARY KEY, date DATE, date_id INTEGER REFERENCES dim_date(date_id),
                           product_id TEXT REFERENCES dim_product(product_id), customer_id TEXT REFERENCES dim_customer(customer_id),
                           store_id TEXT REFERENCES dim_store(store_id), sale_type TEXT, quantity NUMERIC, pieces_sold NUMERIC,
                           payment_method TEXT, standard_price NUMERIC, unit_price_used NUMERIC, total_sales NUMERIC,
                           cost_price_per_piece NUMERIC, cost_of_goods NUMERIC, profit NUMERIC, data_check TEXT);
CREATE TABLE fact_stock_movements (movement_id TEXT PRIMARY KEY, date DATE, date_id INTEGER REFERENCES dim_date(date_id),
                           product_id TEXT REFERENCES dim_product(product_id), supplier_id TEXT REFERENCES dim_supplier(supplier_id),
                           store_id TEXT REFERENCES dim_store(store_id), movement_type TEXT, movement_group TEXT, quantity NUMERIC,
                           unit_counted_in TEXT, pieces_moved NUMERIC, stock_effect NUMERIC, total_cost NUMERIC,
                           cost_price_per_piece NUMERIC, loss_personal_use_value NUMERIC, data_check TEXT);
CREATE TABLE fact_expenses (expense_id TEXT PRIMARY KEY, date DATE, date_id INTEGER REFERENCES dim_date(date_id),
                           store_id TEXT REFERENCES dim_store(store_id), expense_category TEXT, description TEXT, amount NUMERIC,
                           payment_method TEXT, expense_type TEXT);
CREATE TABLE fact_credit_payments (payment_id TEXT PRIMARY KEY, date DATE, date_id INTEGER REFERENCES dim_date(date_id),
                           customer_id TEXT REFERENCES dim_customer(customer_id), amount_received NUMERIC, payment_method TEXT);
CREATE TABLE snapshot_stock (product_id TEXT PRIMARY KEY REFERENCES dim_product(product_id), opening_stock NUMERIC, stock_added NUMERIC,
                           pieces_sold NUMERIC, stock_removed NUMERIC, current_stock NUMERIC, stock_status TEXT,
                           average_cost_per_piece NUMERIC, latest_cost_per_pack NUMERIC, previous_cost_per_pack NUMERIC,
                           cost_trend TEXT, stock_value_at_cost NUMERIC);
-- SQLite import:  .mode csv  /  .import --skip 1 data/dim_product.csv dim_product   (repeat for each file)
