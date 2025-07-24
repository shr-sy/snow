terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.73.0"
    }
  }
}

provider "snowflake" {}

data "external" "transfer" {
  program = ["python3", "${path.module}/grant_ownership.py"]
}

output "ownership_transfer_status" {
  value = data.external.transfer.result
}
