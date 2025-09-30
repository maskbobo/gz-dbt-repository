SELECT *,
round(margin+shipping_fee-logcost-ship_cost,2) as Operational_margin
 FROM {{ ref('int_orders_margin') }} left join {{ ref('stg_raw__ship') }}
using(orders_id)
order by orders_id desc