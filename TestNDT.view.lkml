view: add_a_unique_name_1536744854 {
  derived_table: {
    preserve_types: yes
    explore_source: orders {
      column: created_date {}
      column: is_complete {}
      column: status {}
      column: count {}
    }
  }
  dimension: created_date {
    type: date
  }
  dimension: is_complete {
    label: "Orders Is Complete (Yes / No)"
    type: yesno
  }
  dimension: status {}
  dimension: count {
    type: number
  }
}
