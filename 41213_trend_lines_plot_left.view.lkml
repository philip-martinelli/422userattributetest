connection: "thelook"

explore: noahs_orders {
  hidden: yes
}

view: noahs_orders {
  sql_table_name: demo_db.orders ;;

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
      year,
      month_name,
      month_num
    ]
    sql: ${TABLE}.created_at ;;
  }

  measure: large_numbers {
    type: count
  }

  measure: small_numbers {
    type: number
    sql: COUNT(*)/4000 ;;
  }
}
