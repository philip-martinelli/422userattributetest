view: products {
  sql_table_name: demo_db.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: backslash_category {
    type: string
    sql: concat(${TABLE}.category,"\\",${TABLE}.category,"\\",${TABLE}.category) ;;
  }

  dimension: rank {
    type: number
    #sql: ${TABLE}.rank ;;
    sql: ${TABLE}.rank31513 ;;

  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  html:
    {% if value > 0 and value < 500 %}
      <p style="color: red; font-size: 100%">{{ rendered_value }}</p>
    {% elsif value >= 500 and value < 1000 %}
      <p style="color: blue; font-size:100%">{{ rendered_value }}</p>
    {% else %}
      <p style="color: green; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }

}
