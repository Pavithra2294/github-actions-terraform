
provider "github" {
  owner = "Pavithra2294"
}



resource "github_repository" "demo_repo_pre" {
  name        = "my-terraform-created-repo-pre-demo"
  description = "This repository was created using Terraform!"
  visibility  = "public"    # or "private"
  auto_init   = true        # creates an initial commit with README
}
