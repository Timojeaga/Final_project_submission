terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "mytest_terraform" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t3.micro"
  
  tags = {
    Name = "myterrademo"
  }
  
  count = 3
}
