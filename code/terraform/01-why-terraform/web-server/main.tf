terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }
}

provider "aws" {
  # Configuration options
   region="ap-southeast-2"
}
resource "aws_instance" "app" {
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  ami               = "ami-0f6ad051716c81af1"

  user_data = <<-EOF
              #!/bin/bash
              sudo service apache2 start
              EOF
}

