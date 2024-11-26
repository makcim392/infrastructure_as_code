data "aws_s3_bucket" "bucket" {
  bucket = "${var.org_name}-bucket-iac-2025-${terraform.workspace}"
}
