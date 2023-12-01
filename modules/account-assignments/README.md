# AWS SSO Account Assignments Module

This module assigns [AWS SSO permission sets](https://docs.aws.amazon.com/singlesignon/latest/userguide/permissionsetsconcept.html) to Users and Groups from the [AWS SSO Identity Source](https://docs.aws.amazon.com/singlesignon/latest/userguide/manage-your-identity-source.html).

Some english-language examples of this would be:

- users who are in the group `Administrators` should be assigned the permission set `AdmininstratorAccess` in the `production` account.
- users who are in the group `Developers` should be assigned the permission set `DeveloperAccess` in the `production` account
- users who are in the group `Developers` should be assigned the permission set `AdministraorAccess` in the `sandbox` account

## Usage

Code based on (https://github.com/cloudposse/terraform-aws-sso/).

For a complete example, see [examples/complete](/examples/complete).

```hcl
module "sso_account_assignments" {
  source = "https://github.com/cloudposse/terraform-aws-sso.git//modules/account-assignments?ref=master"

  account_assignments = [
    {
        account = "1",
        permission_set_arn = "arn:aws:sso:::permissionSet/ssoins-0000000000000000/ps-31d20e5987f0ce66",
        principal_type = "GROUP",
        principal_name = "Administrators"
    },
    {
        account = "1",
        permission_set_arn = "arn:aws:sso:::permissionSet/ssoins-0000000000000000/ps-955c264e8f20fea3",
        principal_type = "GROUP",
        principal_name = "Developers"
    },
    {
        account = "2",
        permission_set_arn = "arn:aws:sso:::permissionSet/ssoins-0000000000000000/ps-31d20e5987f0ce66",
        principal_type = "GROUP",
        principal_name = "Developers"
    },
  ]
}

```
