resource "github_repository" "example" {
  name        = "My_awesome_github_repo"
  description = "This repo is created using Terraform"

  visibility = "public"
}

provider "github" {
  # Configuration options
  token = "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"
}