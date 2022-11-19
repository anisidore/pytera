

terraform {
  backend "s3" {
    bucket = "pyn-enoabasi"
    key    = "kubernetes/s3/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terrpy-lock"
    encrypt = true
  }
}