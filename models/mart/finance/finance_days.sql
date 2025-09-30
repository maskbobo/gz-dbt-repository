SELECT date_date,orders_id,
COUNT(orders_id) as Total_number_of_transactions,
Sum(revenue) as Total_revenue,
SAFE_DIVIDE(sum(revenue), count(orders_id)) as Average_Basket,
sum(Operational_margin) as operational_margin,
Sum(purchase_cost) as Total_purchase_cost,
SUM(shipping_fee) as Total_shipping_fees,
SUM(logcost) as total_log_costs,
sum(quantity) as total_products_sold
FROM {{ ref('int_orders_operational') }}
group by date_date,orders_id