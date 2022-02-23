data "aws_iam_policy_document" "permissions" {
  for_each = var.allow_policies

  statement {
    actions = each.value.actions
    resources = each.value.resources
  }
}

resource "aws_iam_user_policy" "permissions" {
  for_each = var.allow_policies
  name = each.key
  policy = data.aws_iam_policy_document.permissions[each.key].json
  user = module.user.iam_user_name
}
