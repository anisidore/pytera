

terraform {
  backend "s3" {
    bucket = "pynan-enoabasi"
    key    = "kubernetes/s3/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "enoabasi-lock"
    encrypt = true
  }
}