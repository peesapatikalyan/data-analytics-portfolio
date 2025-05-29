
import pandas as pd
import matplotlib.pyplot as plt

# Load data
df = pd.read_csv("ecommerce_sales_data.csv")

# Convert order date to datetime
df['Order_Date'] = pd.to_datetime(df['Order_Date'])

# Monthly revenue
monthly_rev = df.groupby(df['Order_Date'].dt.to_period("M"))['Revenue'].sum()
monthly_rev.plot(kind='bar', title='Monthly Revenue', figsize=(10, 4))
plt.tight_layout()
plt.savefig("monthly_revenue.png")

# Top categories by revenue
category_rev = df.groupby('Category')['Revenue'].sum().sort_values(ascending=False)
print("Revenue by Category:")
print(category_rev)

# Profit by region
region_profit = df.groupby('Region')['Profit'].sum()
print("\nProfit by Region:")
print(region_profit)

# Customer segment summary
segment_summary = df.groupby('Customer_Segment')[['Revenue', 'Profit']].sum()
print("\nCustomer Segment Summary:")
print(segment_summary)
