terraform {
  required_providers {
    snowflake = {
      source  = "snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

provider "snowflake" {}

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
