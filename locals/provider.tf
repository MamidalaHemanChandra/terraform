terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.32.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-heman"
    key    = "locals-demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  # Configuration options
}