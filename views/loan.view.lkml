view: loan {
  sql_table_name: `cloud-training-demos.fintech.loan`
    ;;
  drill_fields: [loan_id]

  dimension: loan_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.loan_id ;;
  }

  dimension: application__description {
    type: string
    sql: ${TABLE}.application.description ;;
    group_label: "Application"
    group_item_label: "Description"
  }

  dimension: application__notes {
    type: string
    sql: ${TABLE}.application.notes ;;
    group_label: "Application"
    group_item_label: "Notes"
  }

  dimension: application__purpose {
    type: string
    sql: ${TABLE}.application.purpose ;;
    group_label: "Application"
    group_item_label: "Purpose"
  }

  dimension: application__type {
    type: string
    sql: ${TABLE}.application.type ;;
    group_label: "Application"
    group_item_label: "Type"
  }

  dimension: customer_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: funded_amount {
    type: number
    sql: ${TABLE}.funded_amount ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }

  dimension: installment {
    type: number
    sql: ${TABLE}.installment ;;
  }

  dimension: int_rate {
    type: number
    sql: ${TABLE}.int_rate ;;
  }

  dimension: issue_d {
    type: string
    sql: ${TABLE}.issue_d ;;
  }

  dimension: issue_date {
    type: string
    sql: ${TABLE}.issue_date ;;
  }

  dimension: issue_year {
    type: number
    sql: ${TABLE}.issue_year ;;
  }

  dimension: loan_amount {
    type: number
    sql: ${TABLE}.loan_amount ;;
  }

  dimension: loan_status {
    type: string
    sql: ${TABLE}.loan_status ;;
  }

  dimension: pymnt_plan {
    type: yesno
    sql: ${TABLE}.pymnt_plan ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.term ;;
  }

  measure: outstanding_loans_amount {
    type:  sum
    filters: [loan_status: "-Fully Paid"]
    sql: ${loan_amount};;
  }

  measure: count {
    type: count
    drill_fields: [loan_id, customer.customer_id, loan_with_region.count]
  }

  measure: outstanding_count {
    type: count
    filters: [loan_status: "-Fully Paid"]
    drill_fields: [loan_id, customer.customer_id, loan_with_region.count]
  }
}
