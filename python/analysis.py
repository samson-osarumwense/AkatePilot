"""AkatePilot - starter analysis on the anonymised dataset.  pip install pandas matplotlib"""
import pandas as pd
import matplotlib.pyplot as plt

D = "../data/"
sales = pd.read_csv(D + "fact_sales.csv", parse_dates=["date"])
prod = pd.read_csv(D + "dim_product.csv")
cust = pd.read_csv(D + "dim_customer.csv")
df = sales.merge(prod[["product_id", "product_name", "category", "subcategory"]], on="product_id") \
          .merge(cust[["customer_id", "customer_name"]], on="customer_id")

print("Total sales (NGN):", f"{df.total_sales.sum():,.0f}", "| Gross profit:", f"{df.profit.sum():,.0f}")

# 1. Daily sales + 7-day moving average
daily = df.groupby("date").total_sales.sum()
daily.rolling(7).mean().plot(title="7-day average daily sales (NGN)"); plt.show()

# 2. ABC / Pareto analysis of products
pareto = df.groupby("product_name").profit.sum().sort_values(ascending=False)
share = (pareto.cumsum() / pareto.sum()).rename("cumulative_share")
print(share.head(10))
print("Products that make 80% of profit:", int((share <= 0.8).sum()) + 1)

# 3. Simple RFM customer segmentation (named customers only)
named = df[df.customer_name != "WALK-IN"]
today = named.date.max()
rfm = named.groupby("customer_name").agg(recency=("date", lambda x: (today - x.max()).days),
                                         frequency=("date", "nunique"), monetary=("total_sales", "sum"))
rfm["score"] = (pd.qcut(-rfm.recency, 4, labels=False, duplicates="drop") + pd.qcut(rfm.frequency.rank(method="first"), 4, labels=False)
                + pd.qcut(rfm.monetary.rank(method="first"), 4, labels=False))
print(rfm.sort_values("score", ascending=False).head(10))

# 4. Naive 14-day demand forecast per product (average of last 28 days) -> reorder suggestion
last28 = df[df.date > today - pd.Timedelta(days=28)]
need = (last28.groupby("product_name").pieces_sold.sum() / 28 * 14).round().rename("pieces_needed_14d")
print(need.sort_values(ascending=False).head(10))
