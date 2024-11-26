resource "aws_s3_bucket" "s3_bucket" {
  # Add some unique identifiers to make the name unique
  bucket = "${var.org_name}-bucket-iac-2025-${terraform.workspace}"

  tags = {
    Name    = "First bucket"
    Iac     = true
    Test    = true
    context = "${terraform.workspace}"
  }
}
