select
   f.date_date,
   ROUND((f.operational_margin - c.ads_cost),2) as ads_margin,
   f.revenue,
   f.avg_basket,
   f.nb_transactions,
   f.margin,
   f.operational_margin,
from {{ ref("finance_days") }} f
JOIN {{ ref("int_campaigns_day") }} c
USING (date_date)
ORDER BY date_date DESC