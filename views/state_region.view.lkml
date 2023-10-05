view: state_region {
  sql_table_name: `cloud-training-demos.fintech.state_region`
    ;;

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: subregion {
    type: string
    sql: ${TABLE}.subregion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
