# AWS SQS Policy Terraform module

Terraform module which creates sqs queue policy on AWS.

## Usage

```hcl
module "sqs-queue-policy" {
  source     = "genstackio/sqs/aws//modules/policy"

  // ...
}
```
