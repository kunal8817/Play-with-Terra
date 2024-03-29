terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
  
}

resource "aws_instance" "ec2demo" {
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"
  
}