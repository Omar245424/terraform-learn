terraform {
  backend "s3" {
    bucket         = "your-unique-state-bucket-name"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "your-lock-table-name"
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "Omar_VPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
Name = Omar
  }
}
