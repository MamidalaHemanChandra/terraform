terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.17.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-heman"
    key    = "dynamic-demo"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }

}

provider "aws" {
  # Configuration options
}