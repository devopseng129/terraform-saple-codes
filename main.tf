terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
   }
 }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "my_instance" {
  ami    = "ami-0fcf52bcf5db7b003"
#  region = "us-west-2"
  instance_type = "t2.micro"

  tags = {
    Nam = "vtfrm"
  }
}
