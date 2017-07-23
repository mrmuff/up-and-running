provider "aws" {
    region                  = "us-west-2"
    shared_credentials_file = "/Users/me186031/.aws/credentials"
    profile                 = "hellaghettokidz"
  }


resource "aws_s3_bucket" "terraform_state" {
  bucket = "hella-ghetto-up-and-running-state-bucket"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
