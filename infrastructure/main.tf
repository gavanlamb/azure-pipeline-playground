provider "aws" {
  region  = "ap-southeast-2"
  version = "3.32.0"
}

terraform {
  required_version = ">=0.14.9"
  backend "s3" {
    key     = "pwa/terraform.tfstate"
    encrypt = true
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "pipeline-test-gfljk"
  acl    = "private"
}
