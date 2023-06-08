select 
--raw orders
ord.orderid,
ord.orderdate,
ord.shipdate,
ord.shipmode,
ord.ordercostprice,
ord.ordersellingprice,
ord.ordersellingprice - ord.ordercostprice as orderprofit,
--raw customer
cust.customerid,
cust.customername,
cust.segment,
cust.country,
--raw product
prd.productid,
prd.category,
prd.productname,
prd.subcategory
from {{ ref('raw_orders') }} as ord
left join {{ ref('raw_customer') }} as cust
on ord.customerid = cust.customerid
left join {{ ref('raw_product') }} as prd
on ord.productid = prd.productid