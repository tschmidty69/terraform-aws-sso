
module "sso_account_assignments" {
  source = "./modules/account-assignments"

  depends_on = [
    module.permission_sets
  ]

  permission_sets = module.permission_sets.permission_sets

  account_assignments = [
    {
      accounts            = local.all_account_ids,
      permission_set_name = "AdministratorAccess",
      principal_name      = "Administrators"
    },
    {
      accounts            = local.all_account_ids,
      permission_set_name = "ReadOnly",
      principal_name      = "ReadOnlyUsers"
    },
  ]
}