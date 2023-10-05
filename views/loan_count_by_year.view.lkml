view: loan_count_by_year {
  sql_table_name: `cloud-training-demos.fintech.loan_count_by_year`
    ;;

  dimension: issue_year {
    type: number
    sql: ${TABLE}.issue_year ;;
  }

  dimension: loan_count {
    type: number
    sql: ${TABLE}.loan_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
