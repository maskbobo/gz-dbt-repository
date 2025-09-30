select
    date_date,
    campaign_name,
    sum(ads_cost) as ads_cost,
    sum(impression) as impression,
    sum(click) as click
from {{ ref("int_campaigns") }}
group by date_date, campaign_name
order by date_date desc
