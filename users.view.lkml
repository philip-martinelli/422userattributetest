view: users {
  sql_table_name: demo_db.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

#   measure: count {
#     type: count
#     drill_fields: [detail*]
#   }


  parameter: type {
    type: string
  }

  measure: count_a {
    type: count_distinct
    sql: ${id} ;;
    value_format: "0"
  }
  measure: count_b {
    type: count_distinct
    sql: ${id};;
    value_format: "0.00/%"
  }

  measure: count {
    type: number
    sql: case when  {% parameter type %} = 'one' then ${count_a}
      else ${count_b} end;;

    html: {% if count_a._value and users.type._value == 'one' %}
          {{ count_a._rendered_value }}
          {% else %}
          {{ count_b._rendered_value }}
          {% endif %}
    ;;
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      events.count,
      orders.count,
      user_data.count
    ]
  }
}
