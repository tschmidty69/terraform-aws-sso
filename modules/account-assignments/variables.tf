variable "account_assignments" {
  type = list(object({
    accounts            = list(string)
    permission_set_name = string
    permission_set_arn  = optional(string, "")
    principal_name      = string
    principal_type      = optional(string, "GROUP")
  }))
}

variable "permission_sets" {
  type = map
}