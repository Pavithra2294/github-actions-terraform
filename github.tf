provider "github" {
  owner = "leormston"
}

resource "github_repository" "demo_repo" {
  name        = "my-terraform-created-repo-demo11"
  description = "This repository was created using Terraform!"
  visibility  = "public"    # or "private"
  auto_init   = true        # creates an initial commit with README
}
