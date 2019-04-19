connection: "thelook"

explore: subtotals_order_items {
  hidden: yes
  join: subtotals_orders {
    type: left_outer
    sql_on: ${subtotals_order_items.order_id} = ${subtotals_orders.id} ;;
    relationship: many_to_one
  }
}

view: subtotals_order_items {
  sql_table_name: demo_db.order_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned {
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
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
    value_format: "$0.00"
  }

  measure: count {
    type: count
    drill_fields: [id, inventory_items.id, orders.id]
  }
}

view: subtotals_orders {
  sql_table_name: demo_db.orders ;;

  filter: phase {
    type: string
    suggest_dimension: orders.status
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
    sql: ${status} = 'complete' ;;
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
    fields: [id, status, is_complete, count_case_when]
  }
}
