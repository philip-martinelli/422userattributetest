# If necessary, uncomment the line below to include explore_source.
# include: "thelookphiltest.model.lkml"

view: add_a_unique_name_1536745771 {
  derived_table: {
    explore_source: orders {
      preserve_types: yes
      column: created_date {}
      column: status {}
      column: count {}
    }
  }
  dimension: created_date {
    type: date
  }
  dimension: status {}
  dimension: count {
    type: number
  }
}
