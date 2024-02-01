provider "aws" {
  version = "~> 4.0"
  region  = var.AWS_REGION
  shared_credentials_files = "./aws/credentials"
  profile = "aws"
}  
