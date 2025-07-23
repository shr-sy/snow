provider "snowflake" {
  account         = var.snowflake_account
  username        = var.snowflake_username
  role            = var.snowflake_role
  private_key_path = var.snowflake_private_key_path
  private_key_passphrase = var.snowflake_private_key_passphrase
  region          = var.snowflake_region
}

resource "snowflake_grant_ownership" "role_transfer" {
  on {
    object_type = "ROLE"
    object_name = "HCPSNOW"
  }

  to {
    role_name = "SYSADMIN"
  }

  current_grants = true
}
