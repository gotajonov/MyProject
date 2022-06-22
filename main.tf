resource "github_repository" "myproject" {
  description = var.description
  name       = var.name
  visibility = var.visibility
  auto_init = true
  has_issues = true
  has_projects = true
  has_downloads = true
  has_wiki = true
  delete_branch_on_merge = true
}
