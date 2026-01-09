# Configuração do Provedor para a região US-East-1 (N. Virginia)
provider "aws" {
  region = "us-east-1"
}

# resource "aws_s3_bucket" "my_bucket" {
#   bucket = "my-cloudfront-bucket-${random_id.bucket_suffix.hex}"
# }

# resource "random_id" "bucket_suffix" {
#   byte_length = 8
# }

# resource "aws_cloudfront_distribution" "s3_distribution" {
#   origin {
#     domain_name = aws_s3_bucket.my_bucket.bucket_regional_domain_name
#     origin_id   = "S3-Origin"
#   }

#   enabled             = true
#   is_ipv6_enabled     = true
#   default_root_object = "index.html"

#   # Define onde o conteúdo será cacheado (Edge Locations)
#   default_cache_behavior {
#     allowed_methods  = ["GET", "HEAD"]
#     cached_methods   = ["GET", "HEAD"]
#     target_origin_id = "S3-Origin"

#     forwarded_values {
#       query_string = false
#       cookies { forward = "none" }
#     }
#     viewer_protocol_policy = "redirect-to-https"
#   }

#   restrictions {
#     geo_restriction { restriction_type = "none" }
#   }

#   viewer_certificate { cloudfront_default_certificate = true }
# }

# output "cloudfront_domain_name" {
#   value       = aws_cloudfront_distribution.s3_distribution.domain_name
#   description = "O URL para aceder ao seu conteúdo na borda"
# }