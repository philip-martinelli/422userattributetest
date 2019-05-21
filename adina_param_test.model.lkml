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
      label: "week"
      value: "week"
    }
  }

  dimension_group: created {
    type: time
    timeframes: [month_name,date,week]
    sql: ${TABLE}.created_at ;;
  }
  dimension: dynamic_time {
    sql: {% if date_param._parameter_value == "week" %}
      ${created_week}
      {% else %}
      ${created_month_name}
      {% endif %} ;;
  }
  measure: count {
    type: count
  }
  measure: sum {
    type: sum
    sql: 1 ;;
  }
}

explore: orders {
  hidden: yes
}
