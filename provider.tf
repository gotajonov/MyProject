terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
terraform {
  backend "s3" {
    bucket = "mytfs3bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region  = "us-east-2"
  profile = "ansible"
  alias = "ohio"
}