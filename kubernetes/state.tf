

terraform {
  backend "s3" {
    bucket = "pyna-enoabasi"
    key    = "kubernetes/s3/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terpy-lock"
    encrypt = true
  }
}