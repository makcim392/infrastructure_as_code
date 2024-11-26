data "aws_s3_bucket" "bucket" {
  bucket = "rocketseat-bucket-iac-2025-${terraform.workspace}"
}
