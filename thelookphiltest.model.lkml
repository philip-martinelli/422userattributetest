connection: "thelook"

# some comment by Elliot
# include all the views
include: "*.view"
include: "*.dashboard"

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
  join: users2 {from:users foreign_key: orders.user_id}
  join: users3 {from:users foreign_key: orders.user_id}
  join: users4 {from:users foreign_key: orders.user_id}
  join: users5 {from:users foreign_key: orders.user_id}
  join: users6 {from:users foreign_key: orders.user_id}
  join: users7 {from:users foreign_key: orders.user_id}
  join: users8 {from:users foreign_key: orders.user_id}
  join: users9 {from:users foreign_key: orders.user_id}
  join: users10 {from:users foreign_key: orders.user_id}
  join: users11 {from:users foreign_key: orders.user_id}
  join: users12 {from:users foreign_key: orders.user_id}
  join: users13 {from:users foreign_key: orders.user_id}
  join: users14 {from:users foreign_key: orders.user_id}
  join: users15 {from:users foreign_key: orders.user_id}
  join: users16 {from:users foreign_key: orders.user_id}
  join: users17 {from:users foreign_key: orders.user_id}
  join: users18 {from:users foreign_key: orders.user_id}
  join: users19 {from:users foreign_key: orders.user_id}
  join: users20 {from:users foreign_key: orders.user_id}
  join: users21 {from:users foreign_key: orders.user_id}
  join: users22 {from:users foreign_key: orders.user_id}
  join: users23 {from:users foreign_key: orders.user_id}
  join: users24 {from:users foreign_key: orders.user_id}
  join: users25 {from:users foreign_key: orders.user_id}
  join: users26 {from:users foreign_key: orders.user_id}
  join: users27 {from:users foreign_key: orders.user_id}
  join: users28 {from:users foreign_key: orders.user_id}
  join: users29 {from:users foreign_key: orders.user_id}
  join: users30 {from:users foreign_key: orders.user_id}
  join: users31 {from:users foreign_key: orders.user_id}
  join: users32 {from:users foreign_key: orders.user_id}
  join: users33 {from:users foreign_key: orders.user_id}
  join: users34 {from:users foreign_key: orders.user_id}
  join: users35 {from:users foreign_key: orders.user_id}
  join: users36 {from:users foreign_key: orders.user_id}
  join: users37 {from:users foreign_key: orders.user_id}
  join: users38 {from:users foreign_key: orders.user_id}
  join: users39 {from:users foreign_key: orders.user_id}
  join: users40 {from:users foreign_key: orders.user_id}
  join: users41 {from:users foreign_key: orders.user_id}
  join: users42 {from:users foreign_key: orders.user_id}
  join: users43 {from:users foreign_key: orders.user_id}
  join: users44 {from:users foreign_key: orders.user_id}
  join: users45 {from:users foreign_key: orders.user_id}
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: products {}

explore: schema_migrations {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {
  access_filter: {
    field: state
    user_attribute: state_test
  }
  join: orders {
    sql_on: ${orders.user_id} = ${users.id} ;;
    type: left_outer
    relationship: one_to_many
  }
}

explore: users_nn {}

explore: orders_custom {
  view_name: orders
  fields: [orders.include*]
}
