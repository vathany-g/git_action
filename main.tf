provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "thila-terraform-state-bucket"
    key    = "terraform/state/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "thila_s3_git"


  tags = {
    Name        = "Mythila"
    Environment = "Dev"
  }
}
