resource "aws_s3_bucket" "my-bucket" {
  bucket = var.bucket_name
  force_destroy = true

  tags = {
    Name        = var.tag_name
    Environment = var.env_name
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = var.bucket_name
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "file" {
  bucket = var.bucket_name
  key    = "testfile"
  source = "${path.module}/test.txt"
}