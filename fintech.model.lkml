connection: "bigquery_public_data_looker"

include: "views/*.view.lkml"                # include all views in the views/ folder in this project

explore: loan_details {
  view_name:  loan

}

