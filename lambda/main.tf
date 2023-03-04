terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

locals {
  tags = {
    project = var.project_name
    module  = "terraform"
  }
}