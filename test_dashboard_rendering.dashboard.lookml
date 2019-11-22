- dashboard: test_dashboard_rendering
  title: test_percentage
  layout: newspaper
  elements:
  - title: Percentagee1 (copy 2)
    name: Percentagee (copy 2)
    model: thelook
    explore: orders
    type: looker_column
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    limit_displayed_rows: false
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Percentagee2 (copy 3)
    name: Percentagee (copy 3)
    model: thelook
    explore: orders
    type: looker_column
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Percentagee3 (copy 4)
    name: Percentagee (copy 4)
    model: thelook
    explore: orders
    type: looker_column
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Percentagee4 (copy 2)
    name: Percentagee4 (copy 2)
    model: thelook
    explore: orders
    type: looker_line
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Percentagee5 (copy 5)
    name: Percentagee (copy 5)
    model: thelook
    explore: orders
    type: looker_column
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Percentagee6 (copy 6)
    name: Percentagee (copy 6)
    model: thelook
    explore: orders
    type: looker_column
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Percentagee7 (copy 7)
    name: Percentagee (copy 7)
    model: thelook
    explore: orders
    type: looker_column
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Percentagee8 (copy 8)
    name: Percentagee (copy 8)
    model: thelook
    explore: orders
    type: looker_column
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Percentagee9 (copy 9)
    name: Percentagee (copy 9)
    model: thelook
    explore: orders
    type: looker_line
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Percentagee10 (copy 10)
    name: Percentagee (copy 10)
    model: thelook
    explore: orders
    type: looker_line
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 18
    col: 0
    width: 8
    height: 6
  - title: Percentagee11 (copy 11)
    name: Percentagee (copy 11)
    model: thelook
    explore: orders
    type: looker_line
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 18
    col: 8
    width: 8
    height: 6
  - title: Percentagee12 (copy 12)
    name: Percentagee (copy 12)
    model: thelook
    explore: orders
    type: looker_line
    fields: [orders.count, order_facts.total_order_profit, users.gender, users.state]
    pivots: [users.gender]
    filters:
      users.state: California,Nevada,Arkansas
    sorts: [orders.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${order_facts.total_order_profit}/${orders.count}",
        value_format: !!null '', value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axes: [{label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: calculation_1,
            name: Calculation 1}]}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: orders.count, name: Orders Count}]}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_labels:
      f - orders.count: '"I did it" Clicks'
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [order_facts.total_order_profit]
    listen: {}
    row: 18
    col: 16
    width: 8
    height: 6
