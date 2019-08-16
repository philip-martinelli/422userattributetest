- dashboard: adina_dashboard_test
  title: adina_dashboard_test
  layout: newspaper
  elements:
  - title: Adina_basic_vis
    name: Adina_basic_vis
    model: thelookphiltest
    explore: order_items
    type: looker_column
    fields: [orders.created_day_of_week, inventory_items.count]
    fill_fields: [orders.created_day_of_week]
    sorts: [orders.created_day_of_week]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 0
    width: 24
    height: 36
  - title: Adina_basic_vis_again
    name: Adina_basic_vis_again
    model: thelookphiltest
    explore: order_items
    type: looker_column
    fields: [orders.created_day_of_week, inventory_items.count]
    fill_fields: [orders.created_day_of_week]
    sorts: [orders.created_day_of_week]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    listen: {}
    row: 36
    col: 8
    width: 10
    height: 39
  - title: Adina_basic_vis_again_again
    name: Adina_basic_vis_again_again
    model: thelookphiltest
    explore: order_items
    type: looker_column
    fields: [orders.created_day_of_week, inventory_items.count]
    fill_fields: [orders.created_day_of_week]
    sorts: [orders.created_day_of_week]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    listen: {}
    row: 75
    col: 0
    width: 24
    height: 54
