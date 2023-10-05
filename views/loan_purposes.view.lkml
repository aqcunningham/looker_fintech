view: loan_purposes {
  sql_table_name: `cloud-training-demos.fintech.loan_purposes`
    ;;

  dimension: purpose {
    type: string
    sql: ${TABLE}.purpose ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
