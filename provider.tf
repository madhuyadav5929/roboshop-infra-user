terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }

  backend "s3" {
    bucket   = "roboshop-remote-state5929"
    key = "vpc"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking1"
  }
}

provider "aws" {
  # Configuration options
  # you can give access key and secret key here, but security problem
  region = "us-east-1"
}