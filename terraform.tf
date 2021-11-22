terraform {
  backend "remote" {
    organization = "pratik-hc"

    workspaces {
      name = "learn-tf"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.66.0"
    }
  }
}
