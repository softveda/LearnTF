locals {
  project_name = "learn-tf"
}

resource "aws_key_pair" "deployer" {
  key_name   = "hc-aws"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCE13RlyfywHvq8NREc5IfM+lv5Hpka0fTXVRSVyi3+7iq54M76rAE/QHikgpMBpge2Or5VLusKsBOSxzk+TWxitU64GvwKBH0Pl4nYothQRhi0Onas6F+kRXh3KtR0E8mIZog8o1nb5eIQJuLkEltCyL8QIHJpxCtcv0GcphCXPZfNJS0XHo2O0kp9sHQaNkOlY+98SU3Aow95wwcjok6Pi7LdHklCjo0AXBndeQAzI7cMcmtCejCggkHqicSp0Zm2asBWo2+bm0INv38mLc7I+f2goXMAm6bSpWIoiBi6VXutyz4iPyr8Lk7PVODJBdC8oLLoA+yuRXJqsXgCRGWP"
}

resource "aws_instance" "server" {
  ami           = "ami-0bf8b986de7e3c7ce"
  instance_type = var.instance_type
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    "Name" = "${local.project_name}-server-02"
  }
}
