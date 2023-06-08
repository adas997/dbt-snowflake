select
customerid,
segment,
country,
sum(orderprofit) as profit_by_customer
from {{ ref('stg_orders') }}
group by
customerid,
segment,
country