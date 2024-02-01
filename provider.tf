provider "aws" {
  version = "~> 4.0"
  region  = var.AWS_REGION
  shared_credentials_files = "./aws/credentials"
  assume_role {
    role_arn    = var.IAM_role_arn
  }
}  
