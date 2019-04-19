connection: "thelook"

include: "orders_romain.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: orders_romain {}
