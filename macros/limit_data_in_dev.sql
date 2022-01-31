{% macro limit_data_in_dev(param_date, dev_days=3) %}
{% if target.name == 'dev' %}
where {{ param_date }} >= dateadd('day',-1 * {{ dev_days }},current_timestamp)
{% endif %}
{% endmacro %}