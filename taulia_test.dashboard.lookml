- dashboard: taulia_test
  title: Taulia Test
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Invoices in Scope
    name: Invoices in Scope
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
    note_state: collapsed
    note_display: hover
    note_text: Count of invoices created during the period.
    listen:
      Payment Currency: invoice_core.supplier_payment_currency
      Buyer Company Name: invoice_core.buyer_company_name
      Invoice Origin: invoice_core.invoice_origin_filter
      Buyer Business Unit: invoice_core.buyer_company_code_name
      Supplier Status: invoice_core.supplier_status
      Supplier Country: invoice_core.supplier_details_country
      Supplier Name: invoice_core.supplier_details_name
      Supplier Vendor Number: invoice_core.supplier_vendor_number
      Invoice Date: invoice_core.inv_invoice_date
      Supplier Industry: company.industry
    row: 0
    col: 0
    width: 5
    height: 6
  - title: "% of Invoices Received via Taulia"
    name: "% of Invoices Received via Taulia"
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
    note_state: collapsed
    note_display: hover
    note_text: 'Invoices received via any Taulia channel as a percentage of total
      invoices created by all methods during the period. '
    listen:
      Payment Currency: invoice_core.supplier_payment_currency
      Buyer Company Name: invoice_core.buyer_company_name
      Invoice Origin: invoice_core.invoice_origin_filter
      Buyer Business Unit: invoice_core.buyer_company_code_name
      Supplier Status: invoice_core.supplier_status
      Supplier Country: invoice_core.supplier_details_country
      Supplier Name: invoice_core.supplier_details_name
      Supplier Vendor Number: invoice_core.supplier_vendor_number
      Invoice Date: invoice_core.inv_invoice_date
      Supplier Industry: company.industry
    row: 0
    col: 5
    width: 5
    height: 6
  - title: Suppliers Participating
    name: Suppliers Participating
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
    note_state: collapsed
    note_display: hover
    note_text: 'Count of suppliers submitting at least one invoice via a Taulia channel
      during the period.  '
    listen:
      Payment Currency: invoice_core.supplier_payment_currency
      Buyer Company Name: invoice_core.buyer_company_name
      Invoice Origin: invoice_core.invoice_origin_filter
      Buyer Business Unit: invoice_core.buyer_company_code_name
      Supplier Status: invoice_core.supplier_status
      Supplier Country: invoice_core.supplier_details_country
      Supplier Name: invoice_core.supplier_details_name
      Supplier Vendor Number: invoice_core.supplier_vendor_number
      Invoice Date: invoice_core.inv_invoice_date
      Supplier Industry: company.industry
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
    note_state: collapsed
    note_display: hover
    note_text: Count of invoices 1. Out of Scope = invoices from suppliers who have
      not been invited to Taulia  2. Invited but not Invoicing (Invited ERP) = Invoices
      where supplier was invited but has not enrolled yet 3. Portal = All Invoices
      submitted via the Taulia Portal 4. Email (eSend) = all Invoices submitted via
      email 5. Integrated (eFile) = All Invoices submitted via EDI or other automated
      channel
    listen:
      Payment Currency: invoice_core.supplier_payment_currency
      Buyer Company Name: invoice_core.buyer_company_name
      Invoice Origin: invoice_core.invoice_origin_filter
      Buyer Business Unit: invoice_core.buyer_company_code_name
      Supplier Status: invoice_core.supplier_status
      Supplier Country: invoice_core.supplier_details_country
      Supplier Name: invoice_core.supplier_details_name
      Supplier Vendor Number: invoice_core.supplier_vendor_number
      Invoice Date: invoice_core.inv_invoice_date
      Supplier Industry: company.industry
    row: 6
    col: 3
    width: 9
    height: 9
