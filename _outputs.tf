output "key_id" {
  description = "The user's AWS access key ID."
  value = module.user.iam_access_key_id
}

output "secret_key" {
  description = "The AWS secret access key of the user's key."
  value = module.user.iam_access_key_secret
}
