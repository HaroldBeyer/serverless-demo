terraform {
  required_version = ">= 1.2.2"

  backend "s3" {
    bucket    = "serverless-backend"
    key = "network"
    dynamodb_table = "tf-sls-table"
    region = "us-east-2"
    role_arn = "arn:aws:iam::901007978170:role/terraform-backend"
    encrypt = true
  }
}