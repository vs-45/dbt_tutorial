
{% macro minimum(column_name) %}
    min({{ column_name }})
{% endmacro %}
