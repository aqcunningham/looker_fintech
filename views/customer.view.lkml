view: customer {
  sql_table_name: `cloud-training-demos.fintech.customer`
    ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: string
	description: "Unique ID for customer"
    sql: ${TABLE}.customer_id ;;
  }

  dimension: address_state {
    type: string
	description: "Two letter state abbreviation"
    sql: ${TABLE}.addr_state ;;
  }

  dimension: annual_income {
    type: number
	description: "Annual individual income in USD"
    sql: ${TABLE}.annual_inc ;;
  }

  dimension: annual_income_joint {
    type: number
	description: "Annual joint income in USD"
    sql: ${TABLE}.annual_inc_joint ;;
  }

  dimension: avg_current_balance {
    type: number
	description: "Average balance for all current loans"
    sql: ${TABLE}.avg_cur_bal ;;
  }

  dimension: employment_length {
    type: string
	description: "Length of time at employer"
    sql: ${TABLE}.emp_length ;;
  }

  dimension: employment_title {
    type: string
	description: "Job title of customer"
    sql: ${TABLE}.emp_title ;;
  }

  dimension: home_ownership {
    type: string
	description: "Home ownership status of customer"
    sql: ${TABLE}.home_ownership ;;
  }

  dimension: total_current_balance {
    type: number
	description: "Total balance for all current loans"
    sql: ${TABLE}.Tot_cur_bal ;;
  }

  dimension: verification_status {
    type: string
	description: "Status of verification check"
    sql: ${TABLE}.verification_status ;;
  }

  dimension: zip_code {
    type: zipcode
	description: "Zip code"
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
	description: "The total number of customers"
    drill_fields: [customer_id, loan.count]
  }
}
