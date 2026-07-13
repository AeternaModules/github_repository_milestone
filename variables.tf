variable "repository_milestones" {
  description = <<EOT
Map of repository_milestones, attributes below
Required:
    - owner
    - repository
    - title
Optional:
    - description
    - due_date
    - state
EOT

  type = map(object({
    owner       = string
    repository  = string
    title       = string
    description = optional(string)
    due_date    = optional(string)
    state       = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.repository_milestones : (
        v.state == null || (contains(["open", "closed"], v.state))
      )
    ])
    error_message = "must be one of: open, closed"
  }
}

