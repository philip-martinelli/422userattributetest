view: orders {
  sql_table_name: demo_db.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: busted_dim {
    type: string
    sql: eiofanwoefa ;;
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

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id, order_items.count]
  }

  dimension: dropdown_with_plus {
    type: string
    case: {
      when: {
        sql: 1 = 1 ;;
        label: "A"
      }
      when: {
        sql: 2=2 ;;
        label: "B"
      }
      when: {
        sql: 3=3 ;;
        label: "C"
      }
    }
  }

  dimension: dropdown_no_plus {
    type: string
    case: {
      when: {
        sql: 1 = 1 ;;
        label: "A"
      }
      when: {
        sql: 2=2 ;;
        label: "B"
      }
    }
  }
}
