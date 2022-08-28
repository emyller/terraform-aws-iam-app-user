output "access_key_id" {
  description = "The user's AWS access key ID."
  value = module.user.iam_access_key_id
}

output "access_key_secret" {
  description = "The AWS secret access key of the user's key."
  value = module.user.iam_access_key_secret
}

output "arn" {
  description = "ARN of the IAM user."
  value = module.user.iam_user_arn
}
