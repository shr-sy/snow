terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = ">= 0.60.0"
    }
  }
}

provider "snowflake" {
  account  = var.snowflake_account       # e.g., KIB31224
  username = var.snowflake_username
  password = var.snowflake_password
  role     = var.snowflake_role
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
