resource "aws_lambda_event_source_mapping" "queue-event-source-mapping" {
  count             = var.enabled ? 1 : 0
  batch_size        = var.batch_size
  event_source_arn  = var.queue
  enabled           = true
  function_name     = var.lambda_arn
  maximum_batching_window_in_seconds = var.maximum_batching_window_in_seconds
  dynamic scaling_config {
    for_each = null != var.maximum_concurrency ? [true] : []
    content {
      maximum_concurrency = var.maximum_concurrency
    }
  }
}

resource "aws_iam_role_policy" "lambda-triggable-from-sqs" {
  count  = var.enabled ? 1 : 0
  policy = var.enabled ? data.aws_iam_policy_document.lambda-triggable-from-sqs[0].json : null
  role   = var.lambda_role_name
}
