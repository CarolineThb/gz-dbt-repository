select
    date_date,
    products_id,
    orders_id,
    revenue,
    quantity,
    round((s.quantity * p.purchase_price), 2) as purchase_cost,
    round(s.revenue - (s.quantity * p.purchase_price), 2) as margin,
    {{ margin_percent('revenue' , 's.quantity*p.purchase_price') }} *100 as margin_percent
from {{ ref("stg_raw__sales") }} s
join {{ ref("stg_raw__product") }} p
    using (products_id)