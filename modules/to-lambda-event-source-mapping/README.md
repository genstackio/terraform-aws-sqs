# AWS SQS to Lambda Event Source Mapping Terraform module

Terraform module which creates sqs queue to lambda event source mapping on AWS.

## Usage

```hcl
module "sqs-queue-to-lambda-event-source-mapping" {
  source     = "genstackio/sqs/aws//modules/to-lambda-event-source-mapping"

  // ...
}
```
