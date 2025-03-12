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

data "harness_platform_organization" "org" {
  identifier = "CSE_Labs"
}


data "harness_platform_project" "project" {
  identifier = "CSE_Lab_Project"
  org_id     = "CSE_Labs"
}

resource "harness_platform_environment" "someEnv" {
  org_id = data.harness_platform_organization.org.id
  project_id = data.harness_platform_project.project.id

  identifier = "terraformCreatedEnv4"
  name = "terraformCreatedEnv4"
  type = "PreProduction"

}


output "testOutput" {
  value       = harness_platform_environment.someEnv.name
}

output "clusters_discovered" {
  value       = [
        "test-euc1-blue",
        "test-euc1-green",
    ]
}

output "service_runtime_role_arn" {
  value       = "arn:aws:iam::225285538696:role/test-euc1-awsnativeexample-v2"
}
