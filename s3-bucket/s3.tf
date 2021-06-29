resource "aws_s3_bucket" "b" {
  bucket = var.bucket-name
  acl    = "private"
  cors_rule {
  allowed_headers = ["*"]
  allowed_methods = ["PUT", "POST"]
  allowed_origins = ["*"]
  expose_headers  = ["ETag"]
  max_age_seconds = 3000
  }
  versioning {
  enabled = true
  }


  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
