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

variable "snowflake_private_key_path" {
  description = "Path to the private key file for authentication"
  type        = string
}

variable "snowflake_private_key_passphrase" {
  description = "Passphrase for the private key"
  type        = string
  sensitive   = true
}

variable "snowflake_region" {
  description = "Snowflake region (e.g., us-west-2)"
  type        = string
}
