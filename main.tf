resource "aws_s3_bucket" "s3_bucket" {
  # Add some unique identifiers to make the name unique
  bucket = "rocketseat-bucket-iac-${random_string.suffix.result}"

  tags = {
    Name = "First bucket"
    Iac  = true
    Test = true
  }
}

# Add this to generate a random suffix
resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}
