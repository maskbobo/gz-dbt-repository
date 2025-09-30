SELECT *,  Round(quantity * purchase_price,2) as purchase_cost,
Round(revenue -(quantity * purchase_price),2) AS margin
 FROM {{ ref('stg_raw__sales') }}
Left JOIN {{ ref('stg_raw__product') }}
USING (products_id)