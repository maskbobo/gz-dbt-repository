select
    date_date,
    campaign_name, campaign_key,
    sum(ads_cost) as ads_cost,
    sum(impression) as impression,
    sum(click) as click
from {{ ref("int_campaigns") }}
group by date_date, campaign_name, campaign_key
order by date_date desc
