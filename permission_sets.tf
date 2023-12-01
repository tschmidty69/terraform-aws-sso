module "permission_sets" {
  source = "./modules/permission-sets"

  permission_sets = [
    {
      # This shows the full set of values that can be set as well as the defaults
      name                                = "AdministratorAccess",
      description                         = "Allow Full Access to all accounts",
      relay_state                         = "",
      session_duration                    = "PT8H",
      tags                                = {},
      inline_policy                       = "",
      policy_attachments                  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
      customer_managed_policy_attachments = []
    },
    {
      name                                = "ReadOnly",
      description                         = "Allow Read Only Access to all accounts",
      policy_attachments                  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }
  ]
}