provider "aws" {
  region = "us-east-1"
}

# resource "aws_s3_bucket" "smarttrader-bucket" {
#     bucket = "smarttrader-bucket"

#     tags = {
#       Department = "Finance"
#       Envirounment = "Production"
#     }
# }

# resource "aws_s3_bucket_public_access_block" "smarttrader_bucket_block" {
#     bucket = aws_s3_bucket.smarttrader-bucket.id

#     block_public_acls       = true
#     block_public_policy     = true
#     ignore_public_acls      = true
#     restrict_public_buckets = true
# }

# resource "aws_s3_bucket_versioning" "smarttrader_bucket_versioning" {
#     bucket = aws_s3_bucket.smarttrader-bucket.id
#     versioning_configuration {
#         status = "Enabled"
#     }
# }