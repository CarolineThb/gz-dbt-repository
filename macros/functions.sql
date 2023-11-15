{% macro margin_percent(revenue, purchase_cost) %}
    round(safe_divide({{ revenue }} - {{ purchase_cost }}, {{ revenue }}), 2)
{% endmacro %}
