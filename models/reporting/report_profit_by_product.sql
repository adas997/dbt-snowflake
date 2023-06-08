select
    productid,
    productname,
    category,
    subcategory,
    sum(orderprofit) as profit_by_product
from {{ ref('stg_orders') }}
group by
    productid,
    productname,
    category,
    subcategory