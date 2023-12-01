output "assignments" {
  description = "Mapping of account assignments"
  value       = module.sso_account_assignments.assignments
}

output "permission_sets" {
  description = "List of permission sets"
  value       = module.permission_sets.permission_sets
}