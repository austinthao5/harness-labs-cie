terraform {
  required_providers {
    harness = {
      source = "harness/harness"
      version = "0.31.5"
    }
  }
}

provider "harness" {
  endpoint   = "https://app.harness.io/gateway"
  account_id = var.account_id
  platform_api_key    = var.PAT
}

output "example_field" {
  value = "testing"
}
