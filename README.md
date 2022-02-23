# app-user

A Terraform module to manage an application IAM user.

You are probably looking for a role instead of a user in this case, but this
module could help in specific scenarios.


## Usage example

```hcl
module "app_user" {
  source = "emyller/iam-app-user/aws"
  version = "~> 1.0"

  name = "my-app"
  allow_policies = {
    "static-bucket-access" = {
      actions = ["s3:*"]
      resources = [
        "arn:aws:s3:::my-app-static-files/*",
        "arn:aws:s3:::my-app-static-files",
      ]
    }
    "worker-queues" = {
      actions = [
        "sqs:ReceiveMessage",
        "sqs:GetQueueURL",
        "sqs:DeleteMessage",
      ]
      resources = [
        "arn:aws:sqs:us-east-2:000000000000:my-app-worker-queue",
      ]
    }
  }
}
```
