view: loan {
  sql_table_name: `cloud-training-demos.fintech.loan`
    ;;
  drill_fields: [loan_id]

  dimension: loan_id {
    primary_key: yes
    type: number
    description: "Unique ID for loan"
    sql: ${TABLE}.loan_id ;;
  }

  dimension: application_description {
    type: string
    description: "Borrower description of loan"
    sql: ${TABLE}.application.description ;;
    group_label: "Application"
    group_item_label: "Description"
  }

  dimension: application_notes {
    type: string
    description: "Additional application information"
    sql: ${TABLE}.application.notes ;;
    group_label: "Application"
    group_item_label: "Notes"
  }

  dimension: application_purpose {
    type: string
    description: "Primary reason for loan"
    sql: ${TABLE}.application.purpose ;;
    group_label: "Application"
    group_item_label: "Purpose"
  }

  dimension: application_type {
    type: string
    description: "Individual or joint application"
    sql: ${TABLE}.application.type ;;
    group_label: "Application"
    group_item_label: "Type"
  }

  dimension: customer_id {
    type: string
    description: "Unique ID for customer"
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: funded_amount {
    type: number
    description: "Principal amount borrower receives from lender"
    sql: ${TABLE}.funded_amount ;;
  }

  dimension: grade {
    type: string
    description: "Letter grade assigned based on creditworthiness"
    sql: ${TABLE}.grade ;;
  }

  dimension: installment {
    type: number
    description: Fixed payment due each month"
    sql: ${TABLE}.installment ;;
  }

  dimension: interest_rate {
    type: number
    description: "Annual Percentage Rate of loan"
    sql: ${TABLE}.int_rate ;;
  }

  dimension: issue_day {
    type: string
    description: "Month and day loan issued"
    sql: ${TABLE}.issue_d ;;
  }

  dimension: issue_date {
    type: string
    description: "Month and day loan issued"
    sql: ${TABLE}.issue_date ;;
  }

  dimension: issue_year {
    type: number
    description: "Month and day loan issued"
    sql: ${TABLE}.issue_year ;;
  }

  dimension: loan_amount {
    type: number
    description: "Outstanding balance of loan"
    sql: ${TABLE}.loan_amount ;;
  }

  dimension: loan_status {
    type: string
    description: "Payment status of loan"
    sql: ${TABLE}.loan_status ;;
  }

  dimension: payment_plan {
    type: yesno
    description: "Status of payment plan approval"
    sql: ${TABLE}.pymnt_plan ;;
  }

  dimension: state {
    type: string
    description: "Location of borrower by state"
    sql: ${TABLE}.state ;;
  }

  dimension: term {
    type: string
    description: "Repayment term of loan"
    sql: ${TABLE}.term ;;
  }

  measure: outstanding_loans_amount {
    type:  sum
    description: "Sum of all outstanding loan amounts"
    filters: [loan_status: "-Fully Paid"]
    sql: ${loan_amount};;
  }

  measure: count {
    type: count
    description: "The total number of loans"
    drill_fields: [loan_id, customer.customer_id, loan_with_region.count]
  }

  measure: outstanding_count {
    type: count
    description: "The total number of outstanding loans"
    filters: [loan_status: "-Fully Paid"]
    drill_fields: [loan_id, customer.customer_id, loan_with_region.count]
  }
}
