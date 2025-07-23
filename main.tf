provider "snowflake" {
  account         = var.snowflake_account
  username        = var.snowflake_username
  role            = var.snowflake_role
  passowrd        = var.snowflake_passowrd
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
