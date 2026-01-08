output "account_id" {
  description = "AWS Account ID"
  value       = data.aws_caller_identity.current.account_id
}

output "user_id" {
  description = "AWS User ID"
  value       = data.aws_caller_identity.current.user_id
}

output "arn" {
  description = "ARN of the AWS identity"
  value       = data.aws_caller_identity.current.arn
}
