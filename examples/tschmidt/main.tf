provider "aws" {
  region = var.aws_region
}

data "aws_organizations_organization" "org" {}
locals {
  member_account_ids =  [ for account in data.aws_organizations_organization.org.non_master_accounts: account.id
                            if account.status == "ACTIVE" ]
  all_account_ids    =  [ for account in data.aws_organizations_organization.org.accounts : account.id 
                          if account.status == "ACTIVE" ]
}