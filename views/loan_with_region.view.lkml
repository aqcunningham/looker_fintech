view: loan_with_region {
  sql_table_name: `cloud-training-demos.fintech.loan_with_region`
    ;;

  dimension: loan_amount {
    type: number
    sql: ${TABLE}.loan_amount ;;
  }

  dimension: loan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.loan_id ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  measure: count {
    type: count
    drill_fields: [loan.loan_id]
  }
}
