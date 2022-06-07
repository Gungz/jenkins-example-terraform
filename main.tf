output "jenkins_terraform" {
  value = "running Terraform from Jenkins"
}

provider "aws" {
  # No credentials explicitly set here because they come from either the
  # environment or the global credentials file.
  region = "ap-southeast-1"

  assume_role {
    role_arn = "arn:aws:iam::212316051817:role/TerraformAdministrator"
  }
}
