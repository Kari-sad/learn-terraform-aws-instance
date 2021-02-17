terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "tfcourse" {
  ami           = "ami-00ddb0e5626798373"
  instance_type = "t2.micro"
}
