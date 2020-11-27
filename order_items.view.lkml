view: order_items {
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
    link: {
      url: "/explore/lauren_test/order_items?fields=users.city&f[users.test]={{ _field._name | url_encode }}"
      label: "test"
      #       url: "/dashboards/152?test%20filter={{ _field._value | url_encode }}"
    }
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

  parameter: test {
  }

  measure: count {
    type: count
    drill_fields: [id, inventory_items.id, orders.id]
    link: {
      url: "/explore/thelookphiltest/order_items?fields=inventory_items.id&f[order_items.test]={{ _field._name | url_encode }}"
      label: "Test"
    }
  }

  measure: taulia_portal_count {
    label: "Invoices in Scope"
    sql: ${id} ;;
    type: count_distinct
    value_format: "0"
    description: "All Invoices submitted via the Taulia Portal"
  }

  measure: all_invoices_count {
    sql: ${id} ;;
    type: count_distinct
    value_format_name: usd_0
  }

  measure: taulia_invoices_count {
    sql: ${id} ;;
    type: count_distinct
  }

  measure: invoices_received_taulia_percent {
    label: "% of Invoices Received via Taulia"
    sql: ${taulia_invoices_count}/ NULLIF(${all_invoices_count},0) ;;
    type: number
    value_format: "0.0%"
  }

  measure: unique_suppliers_count_with_invoices {
    label: "Suppliers Participating"
    type: count_distinct
    sql: ${order_id} ;;
    value_format_name: usd_0
  }

  measure: dashboard_title {
    type: count
    html: <div class="vis">
      <div class="vis-single-value" style="font-size:40px; background-image: linear-gradient(to right, #5A2FC2, #F84066); color:#ffffff">
      <font color="#5A2FC2"><center><b>Dashboard Report Title</b>&nbsp; </font>
      <p style="color:#ffffff;"> </p>
      <p style="float:left; font-family: Trebuchet MS;">
      </div>
      </div>
      ;;
  }

}
