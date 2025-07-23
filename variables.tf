variable "snowflake_account" {
  description = "Snowflake account identifier (e.g., KIB31224)"
  type        = string
}

variable "snowflake_username" {
  description = "Snowflake user"
  type        = string
}

variable "snowflake_password" {
  description = "Snowflake password"
  type        = string
}

variable "snowflake_role" {
  description = "Snowflake role (e.g., ACCOUNTADMIN)"
  type        = string
}
