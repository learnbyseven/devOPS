terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.14.1"
    }
  }
}

provider "aws" {
  region = "ap-south-1"

}
resource "aws_instance" "tftest" {
  ami = "ami-07f07a6e1060cd2a8"
  instance_type = "c5.xlarge"
  vpc_security_group_ids = ["sg-000023ecd1277aae4"]
  key_name = "gk1"
  region = "ap-south-1"

}
