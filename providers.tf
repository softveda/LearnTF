provider "aws" {
  region = var.region
   default_tags {
   tags = {
     Owner       = "pratik@hashicorp.com"
     Project     = "pk-learn-tf"
   }
 }
}
