select
    orders_id,
    date_date,
    revenue,
    quantity,
    purchase_cost,
    margin,
    ROUND((o.margin + s.shipping_fee - s.log_cost - s.ship_cost),2) AS operational_margin
from {{ ref("int_orders_margin") }} o
join {{ ref("stg_raw__ship") }} s
using (orders_id)