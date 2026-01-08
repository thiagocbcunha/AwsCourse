variables {
  aws_region = "us-east-1"
}

run "test_aws_connection" {
  command = plan

  assert {
    condition     = data.aws_caller_identity.current.account_id != ""
    error_message = "Failed to retrieve AWS account ID - check credentials"
  }

  assert {
    condition     = data.aws_caller_identity.current.user_id != ""
    error_message = "Failed to retrieve AWS user ID"
  }

  assert {
    condition     = data.aws_caller_identity.current.arn != ""
    error_message = "Failed to retrieve AWS ARN"
  }
}

run "validate_outputs" {
  command = plan

  assert {
    condition     = output.account_id != ""
    error_message = "Account ID output is empty"
  }

  assert {
    condition     = output.user_id != ""
    error_message = "User ID output is empty"
  }

  assert {
    condition     = output.arn != ""
    error_message = "ARN output is empty"
  }
}
