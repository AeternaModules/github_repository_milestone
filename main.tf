resource "github_repository_milestone" "repository_milestones" {
  for_each = var.repository_milestones

  owner       = each.value.owner
  repository  = each.value.repository
  title       = each.value.title
  description = each.value.description
  due_date    = each.value.due_date
  state       = each.value.state
}

