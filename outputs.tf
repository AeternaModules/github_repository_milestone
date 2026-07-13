output "repository_milestones_id" {
  description = "Map of id values across all repository_milestones, keyed the same as var.repository_milestones"
  value       = { for k, v in github_repository_milestone.repository_milestones : k => v.id }
}
output "repository_milestones_description" {
  description = "Map of description values across all repository_milestones, keyed the same as var.repository_milestones"
  value       = { for k, v in github_repository_milestone.repository_milestones : k => v.description }
}
output "repository_milestones_due_date" {
  description = "Map of due_date values across all repository_milestones, keyed the same as var.repository_milestones"
  value       = { for k, v in github_repository_milestone.repository_milestones : k => v.due_date }
}
output "repository_milestones_number" {
  description = "Map of number values across all repository_milestones, keyed the same as var.repository_milestones"
  value       = { for k, v in github_repository_milestone.repository_milestones : k => v.number }
}
output "repository_milestones_owner" {
  description = "Map of owner values across all repository_milestones, keyed the same as var.repository_milestones"
  value       = { for k, v in github_repository_milestone.repository_milestones : k => v.owner }
}
output "repository_milestones_repository" {
  description = "Map of repository values across all repository_milestones, keyed the same as var.repository_milestones"
  value       = { for k, v in github_repository_milestone.repository_milestones : k => v.repository }
}
output "repository_milestones_state" {
  description = "Map of state values across all repository_milestones, keyed the same as var.repository_milestones"
  value       = { for k, v in github_repository_milestone.repository_milestones : k => v.state }
}
output "repository_milestones_title" {
  description = "Map of title values across all repository_milestones, keyed the same as var.repository_milestones"
  value       = { for k, v in github_repository_milestone.repository_milestones : k => v.title }
}

