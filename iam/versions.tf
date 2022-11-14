terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  #backend "s3" {
  #  bucket         = "my-tf-state-us-east-1"
  #  dynamodb_table = "my-tf-state-us-east-1-lock"
  #  key            = "iam.tfstate"
  #  region         = "us-east-1"
  #  encrypt        = "true"
  #}
}

provider "aws" {
  region  = var.region
  #profile = "some-profile"

  default_tags {
    tags = {
      terraform = "true"
    }
  }
}
