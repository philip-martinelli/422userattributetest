- dashboard: taulia_test
  title: Taulia Test
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Taulia Test
    name: Taulia Test
    model: thelookphiltest
    explore: order_items
    type: single_value
    fields: [order_items.all_invoices_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Invoices in Scope
    defaults_version: 1
    row: 0
    col: 0
    width: 5
    height: 6
  - title: New Tile
    name: New Tile
    model: thelookphiltest
    explore: order_items
    type: single_value
    fields: [order_items.invoices_received_taulia_percent]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: "% Invoices Received"
    defaults_version: 1
    row: 0
    col: 5
    width: 5
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: thelookphiltest
    explore: order_items
    type: single_value
    fields: [order_items.unique_suppliers_count_with_invoices]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Suppliers Participating
    defaults_version: 1
    row: 0
    col: 10
    width: 5
    height: 6
  - title: Invoice Count
    name: Invoice Count
    model: thelookphiltest
    explore: order_items
    type: looker_donut_multiples
    fields: [order_items.invoices_received_taulia_percent, order_items.all_invoices_count,
      order_items.taulia_portal_count, order_items.taulia_invoices_count, order_items.unique_suppliers_count_with_invoices]
    limit: 500
    column_limit: 50
    show_value_labels: false
    font_size: 12
    hide_legend: true
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 6
    col: 3
    width: 9
    height: 9
