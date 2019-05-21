connection: "thelook"
# include all views in this project


view: orders{
  sql_table_name: demo_db.orders ;;

  parameter: date_param {
    type: unquoted
    allowed_value: {
      label: "month"
      value: "month"
    }
    allowed_value: {
      label: "date"
      value: "date"
    }
  }

  dimension_group: created {
    type: time
    timeframes: [month,date]
    sql: ${TABLE}.created_at ;;
  }
  dimension: dynamic_time {
    sql: {% if date_param._parameter_value == "month" %}
      ${created_month}
      {% else %}
      ${created_date}
      {% endif %} ;;
  }
  measure: count {
    type: count
  }
}

explore: orders {
  hidden: yes
}
