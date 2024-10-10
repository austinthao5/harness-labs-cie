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

  identifier = "terraformCreatedEnv"
  name = "terraformCreatedEnv"
  type = "PreProduction"

  git_details {
    store_type = "REMOTE"
    connector_ref = "account.accountharnesslabs"
    repo_name = "harness-labs"
    file_path = ".harness/terraformCreatedEnv.yaml"
    branch = "main"
  }
}
