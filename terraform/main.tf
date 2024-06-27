terraform {
  required_providers {
    harness = {
      source = "harness/harness"
      version = "0.31.5"
    }
  }
}
variable "account_id" {
  description = "The ID of the account."
  type        = string
  value       = "acc_id"
}

variable "PAT" {
  description = "The Platform API key."
  type        = string
  value       = "PAT"
}

provider "harness" {
  endpoint   = "https://app.harness.io/gateway"
  account_id = var.account_id
  platform_api_key    = var.PAT
}

output "example_field" {
  value = "testing"
}
