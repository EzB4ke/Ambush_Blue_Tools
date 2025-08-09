terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

data "aws_s3_object" "flag" {
  bucket = "dc-33-cv-tf-ctf-bucket-cxc0p38y"
  key    = "flag.txt"
}

output "flag" {
  value = data.aws_s3_object.flag.body
}
