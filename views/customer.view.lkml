view: customer {
  sql_table_name: `cloud-training-demos.fintech.customer`
    ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: addr_state {
    type: string
    sql: ${TABLE}.addr_state ;;
  }

  dimension: annual_inc {
    type: number
    sql: ${TABLE}.annual_inc ;;
  }

  dimension: annual_inc_joint {
    type: number
    sql: ${TABLE}.annual_inc_joint ;;
  }

  dimension: avg_cur_bal {
    type: number
    sql: ${TABLE}.avg_cur_bal ;;
  }

  dimension: emp_length {
    type: string
    sql: ${TABLE}.emp_length ;;
  }

  dimension: emp_title {
    type: string
    sql: ${TABLE}.emp_title ;;
  }

  dimension: home_ownership {
    type: string
    sql: ${TABLE}.home_ownership ;;
  }

  dimension: tot_cur_bal {
    type: number
    sql: ${TABLE}.Tot_cur_bal ;;
  }

  dimension: verification_status {
    type: string
    sql: ${TABLE}.verification_status ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id, loan.count]
  }
}
