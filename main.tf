provider "snowflake" {
  account         = var.snowflake_account
  username        = var.snowflake_username
  role            = var.snowflake_role
  password        = var.snowflake_password
}

resource "snowflake_grant_ownership" "role_transfer" {
  on {
    object_type = "ROLE"
    object_name = "HCP_USER"
  }

  to {
    role_name = "SYSADMIN"
  }

  current_grants = true
}
