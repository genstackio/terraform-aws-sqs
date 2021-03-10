# AWS SQS to Lambda Terraform module

Terraform module which creates sqs queue to lambda on AWS.

## Usage

```hcl
module "sqs-queue-to-lambda" {
  source     = "genstackio/sqs/aws//modules/to-lambda"

  // ...
}
```
