select
    DATE_TRUNC(date_date, month) as date_date,
    ROUND(SUM(ads_margin),2) AS ads_margin,
    ROUND(SUM(revenue),2) AS revenue,
    ROUND(SUM(avg_basket),2) AS avg_basket,
    ROUND(SUM(nb_transactions),2) AS nb_transactions,
    ROUND(SUM(margin),2) AS margin,
    ROUND(SUM(operational_margin),2) AS operational_margin,
from {{ ref("finance_campaigns_day") }} 
GROUP BY date_date
