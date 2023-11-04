terraform {
   backend "s3" {
    # bucket debe cambiar
     bucket = "teraform-backend-sandbox-107"
     key    = "sandbox3/frontend/terraform.tfstate"
     region = "us-east-1"
     #dynamodb_table = "" 
   }  
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}