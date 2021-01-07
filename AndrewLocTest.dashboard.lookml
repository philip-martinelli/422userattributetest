- dashboard: AndrewLocTest
  title: AndrewLocTest
  layout: newspaper
  elements:
  - title: TestTitle
    name: TestTitle
    model: adina_param_test
    explore: merge_order_items
    type: single_value
    fields: [merge_order_items.id, merge_order_items.count]
    sorts: [merge_order_items.count desc]
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
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: TestNoteForLoc
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
