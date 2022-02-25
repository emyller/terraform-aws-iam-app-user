resource "aws_iam_user_policy_attachment" "external" {
  /*
  Attach existing policies (e.g. AWS managed ones) to the user
  */
  for_each = var.external_policies
  user = module.user.iam_user_name
  policy_arn = each.value
}
