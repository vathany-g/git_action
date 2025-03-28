provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "thila-s3"
    key    = "terraform/state/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

