view: orders {
  sql_table_name: demo_db.orders ;;

  filter: phase {
    type: string
    suggest_dimension: orders.status1
  }

  parameter: geo_polygon {
    default_value: ""
    description: "Use this for filtering users based on filtering dimensions, requires this format: [[0.0], [0.0]], use geojson.io to generate a valid polygon"
    type: string
  }

  dimension: is_last_location_in_polygon {
    type: yesno
     sql:  {% parameter geo_polygon %} ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: is_complete {
    type: yesno
    sql: ${status1} = 'complete' ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id, order_items.count]
  }

  measure: count_case_when {
    type: count_distinct
    sql: CASE WHEN ${is_complete} THEN ${user_id} ELSE NULL END ;;
  }

  set: include {
    fields: [id, status1, is_complete, count_case_when]
  }
}
