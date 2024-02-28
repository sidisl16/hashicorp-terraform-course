terraform {

  backend "remote" {
    organization = "sid_learning"
    workspaces {
      name = "workspace"
    }
  }
  
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

resource "aws_instance" "example" {
  ami           = "ami-011899242bb902164" //"ami-0c7217cdde317cfec"  # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
  subnet_id = "subnet-03a4aa540d5f78092"
  tags = {
    Name = var.instance_name
  }
}
