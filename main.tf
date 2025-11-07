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


resource "aws_s3_bucket" "code-bucket-pre-finance" {
  bucket = "code-bucket-pre-finance" 
  acl    = "private"
}


resource "aws_s3_object" "script_file-pre-finance" {
  bucket = aws_s3_bucket.code-bucket-pre-finance.id
  key    = "script.py"           
  source = "script.py"  
}
