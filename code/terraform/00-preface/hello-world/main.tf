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


resource "aws_instance" "example" {
  ami           = "ami-0f6ad051716c81af1"
  instance_type = "t2.micro"
}

