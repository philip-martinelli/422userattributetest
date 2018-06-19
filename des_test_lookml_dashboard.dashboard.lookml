- dashboard: des_test_lookml_dashboard
  title: Des Test Lookml Dashboard
  layout: tile
  tile_size: 100

  filters:
  - name: Date Three
    title: Date Three
    type: date_filter
    default_value: ''
    allow_multiple_values: true
    required: false
  - name: Email
    title: Email
    type: string_filter
    default_value: "{{ _user_attributes['email'] }}"
    allow_multiple_values: true
    required: false

  elements:
   - name: add_a_unique_name_1529446490
     title: Untitled Visualization
     model: thelookphiltest
     explore: products
     type: table
     fields: [products.department, products.item_name, products.count]
     sorts: [products.count desc]
     limit: 500
     query_timezone: America/Los_Angeles
