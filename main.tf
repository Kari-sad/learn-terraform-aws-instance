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
  region  = var.region
}

resource "aws_instance" "tfcourse" {
  ami           = "ami-00ddb0e5626798373"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.tfcourse.id
}

/* output the public IP address of the elastic IP address that we create*/
output "ip" {
  value = aws_eip.ip.public_ip
}
