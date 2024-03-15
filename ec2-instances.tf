
terraform {
  cloud {
    organization = "hashicorp-support-eng"

    workspaces {
      name = "terraform-advanced-learning"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "ec2-demo" {
  ami           = "ami-0e0bf53f6def86294"
  instance_type = "t2.micro"
}
