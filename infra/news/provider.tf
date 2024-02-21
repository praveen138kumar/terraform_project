# Setup our aws provider
variable "region" {
  default = "us-east-1"
}
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "newsnuthalapati-terraform-infra-na"
    region = "us-east-1"
    dynamodb_table = "newsnuthalapati-terraform-locks"
    key = "news/terraform.tfstate"
  }
}
