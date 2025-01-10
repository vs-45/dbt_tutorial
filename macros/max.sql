{% macro maximum(column_name) %}
    max({{ column_name }})
{% endmacro %}