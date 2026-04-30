terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "myapp-terraform-state-20260429-hyen"
    key            = "training/lab06/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    
  }
}

provider "aws" {
  region = var.region
}
