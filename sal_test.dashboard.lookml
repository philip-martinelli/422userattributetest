- dashboard: sal_test
  title: Sal Test
  layout: tile
  tile_size: 100

  filters:

  elements:

    - name: add_a_unique_name_1564664105
      title: Untitled Visualization
      model: thelook
      explore: orders
      type: single_value
      fields: [orders.id]
      limit: 5000
      column_limit: 50
      query_timezone: America/Los_Angeles
      series_types: {}
    - name: add_a_unique_name_15646641051
      title: Untitled Visualization
      model: thelook
      explore: orders
      type: single_value
      fields: [orders.id]
      limit: 5000
      column_limit: 50
      query_timezone: America/Los_Angeles
      series_types: {}
    - name: test1
      title: test1
      model: thelook
      explore: orders
      type: table
      fields: [orders.id]
      limit: 5000
      column_limit: 50
      query_timezone: America/Los_Angeles
      row: 0
      col: 0
      width: 5
      height: 6
    - name: test2
      title: test1
      model: thelook
      explore: orders
      type: table
      fields: [orders.id]
      limit: 5000
      column_limit: 50
      query_timezone: America/Los_Angeles
      row: 0
      col: 0
      width: 5
      height: 6
    - name: "#114317 test"
      title: "#114317 test"
      model: thelook
      explore: order_items
      type: table
      fields: [order_items.total_gross_margin, order_items.total_sale_price]
      sorts: [calculation_1 desc]
      limit: 500
      dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: " ${order_items.total_sale_price}\
            \ - ${order_items.total_gross_margin}", value_format: !!null '', value_format_name: !!null '',
          _kind_hint: measure, _type_hint: number}]
      query_timezone: America/Los_Angeles
      show_view_names: true
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      row: 12
      col: 8
      width: 8
      height: 6
    - name: thing for dashboard
      title: thing for dashboard
      model: thelook
      explore: inventory_items
      type: looker_column
      fields: [products.brand, products.category, products.item_name, products.retail_price,
        products.id, products.count]
      filters:
        products.brand: Aeropostale,American Apparel
        products.department: Men
      sorts: [products.brand]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      row: 18
      col: 8
      width: 8
      height: 6
    - name: Do Not Change Smoke Test Look
      title: Do Not Change Smoke Test Look
      model: thelook
      explore: inventory_items
      type: table
      fields: [products.brand, products.category, products.department, products.item_name,
        products.retail_price]
      filters:
        products.brand: Aeropostale,American Apparel
        products.department: Men
      sorts: [products.brand]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      row: 12
      col: 16
      width: 8
      height: 6
    - name: Foo
      title: Foo
      model: thelook
      explore: order_items
      type: looker_column
      fields: [orders.count, orders.id]
      limit: 5000
      query_timezone: America/Los_Angeles
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      row: 6
      col: 0
      width: 24
      height: 6
    - title: New Tile
      name: New Tile
      model: thelookphiltest
      explore: order_items
      type: single_value
      fields: [inventory_items.count]
      limit: 5000
      column_limit: 50
      note_state: collapsed
      note_display: below
      note_text: ''
      listen: {}
      row: 12
      col: 0
      width: 8
      height: 6
    - title: afaf
      name: afaf
      model: thelookphiltest
      explore: order_items
      type: single_value
      description: asdfasdf
      fields: [inventory_items.count]
      limit: 5000
      column_limit: 50
      custom_color_enabled: true
      custom_color: ''
      show_single_value_title: true
      single_value_title: Hello
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      row: 18
      col: 0
      width: 8
      height: 6
