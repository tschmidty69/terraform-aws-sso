provider "aws" {
  region = var.aws_region
}

data "aws_organizations_organization" "org" {}
locals {
  member_account_ids = data.aws_organizations_organization.org.non_master_accounts[*].id
  all_account_ids    = data.aws_organizations_organization.org.accounts[*].id
}