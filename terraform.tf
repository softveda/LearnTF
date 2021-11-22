terraform {
  backend "s3" {
    bucket = "learn-tf-state-backend"
    key    = "jenkins/lear-tf.state"
    region = "ap-southeast-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.66.0"
    }
  }
}
