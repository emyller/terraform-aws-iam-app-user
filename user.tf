module "user" {
  source = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 4.0"

  name = var.name
  create_iam_user_login_profile = false
  create_iam_access_key = true
}
