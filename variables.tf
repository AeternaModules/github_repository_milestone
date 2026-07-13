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
  # --- Unconfirmed validation candidates, derived from github_repository_milestone's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: state
  #   condition: contains(["open", "closed"], value)
  #   message:   must be one of: open, closed
}

