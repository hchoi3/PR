provider "aws" {
  version = "~> 4.0"
  region  = var.AWS_REGION
  access_key = "AWS_ACCESS_KEY"
  secret_key = "AWS_SECRET_ACCESS_KEY"
  assume_role {
    role_arn    = var.IAM_role_arn
  }
}  
