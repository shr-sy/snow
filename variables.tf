variable "snowflake_account" {
  description = "Snowflake account identifier"
  type        = string
}

variable "snowflake_username" {
  description = "Snowflake user with sufficient privileges"
  type        = string
}

variable "snowflake_role" {
  description = "Role used to perform actions (e.g., ACCOUNTADMIN)"
  type        = string
}

variable "snowflake_private_password" {
  description = "Passowrd"
  type        = string
}


