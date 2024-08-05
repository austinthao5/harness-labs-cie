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
  value = var.account_id
}

output "example_field2" {
  value = var.PAT
}

output "example_field3" {
  value = var.TESTING
}
