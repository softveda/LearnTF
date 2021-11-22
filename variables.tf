variable "region" {
  type        = string
  description = "AWS Region"
  default     = "ap-southeast-2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
