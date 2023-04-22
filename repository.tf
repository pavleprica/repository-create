resource "github_repository" "repository" {
  name                   = var.name
  visibility             = var.visibility
  description            = var.description
  allow_auto_merge       = false
  allow_rebase_merge     = true
  allow_merge_commit     = false
  allow_squash_merge     = false
  delete_branch_on_merge = true
  has_downloads          = var.has_downloads
  has_issues             = var.has_issues
  has_wiki               = var.has_wiki
  has_projects           = var.has_projects
  archive_on_destroy     = var.archive_on_destroy
  archived               = var.archived
  vulnerability_alerts   = true
  gitignore_template     = var.gitignore_template
}

resource "github_branch_protection" "default_branch_protection" {
  depends_on    = [github_repository.repository]
  repository_id = github_repository.repository.id
  pattern       = "master"

  allows_deletions                = false
  allows_force_pushes             = false
  require_conversation_resolution = true
  required_linear_history         = true
  enforce_admins                  = true
  required_status_checks {
    strict = true
  }
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 1
  }
}

resource "github_repository_collaborator" "read_access_collaborators" {
  for_each   = toset(var.users_with_read_access)
  repository = github_repository.repository.id
  permission = "pull"
  username   = each.key
}

resource "github_repository_collaborator" "write_access_collaborators" {
  for_each   = toset(var.users_with_push_access)
  repository = github_repository.repository.id
  permission = "push"
  username   = each.key
}
