provider "vault" {
  address = "http://vault-internal.maidevops.fun:8200"
  token   = var.token
}

terraform {
  backend "s3" {
    bucket = "terraform-myshop"
    key    = "roboshop-config-values/terraform.tfstate"
    region = "us-east-1"
  }
}