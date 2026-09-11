terraform {
  required_version = "~> 1.16.0"

  cloud {

    organization = "Flirnz"

    workspaces {
      name = "terraform-vcs"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}
provider "aws" {
  region = "eu-west-1"
}