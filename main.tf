terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

variable "instance_type" {
  type = string
}


resource "aws_instance" "my_instance" {
  ami = "ami-0fcf52bcf5db7b003"
  #  region = "us-west-2"
  instance_type = var.instance_type

  tags = {
    Nam = "vtfrm"
  }
}
