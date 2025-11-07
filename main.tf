provider "aws" {
  region = "eu-north-1"
}

# S3 Bucket for Source Data
resource "aws_s3_bucket" "source-data-bucket-pre-finance" {
  bucket        = "source-data-bucket-pre-finance"
  force_destroy = true
}


# S3 Bucket for Traget 
resource "aws_s3_bucket" "target-data-bucket-pre-finance" {
  bucket        = "target-data-bucket-pre-finance"
  force_destroy = true
}

