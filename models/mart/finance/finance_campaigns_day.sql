SELECT date_date,
Round(SUM(operational_margin -ads_cost),2) as ads_margin,
ROUND(Sum(operational_margin),2) as operational_margin,
sum(ads_cost) as ads_cost,
sum(impression) as ads_impression,
sum(click) as ads_clicks,
ROUND(sum(Total_revenue),2) as revenue,
ROUND(sum(Total_purchase_cost),2) as purchase_cost,
sum(total_products_sold) as quantity,
Round(SUM( Total_revenue- Total_purchase_cost - total_log_costs - Total_shipping_fees),2) as margin,
ROUND(SUM(Total_shipping_fees),2)  as shipping_fee,
ROUND(SUM(total_log_costs),2) as log_cost
from {{ ref('finance_days') }}
LEFT JOIN {{ ref('int_campaigns_day') }}
USING(date_date)
group by date_date