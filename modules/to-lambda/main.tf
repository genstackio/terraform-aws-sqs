module "queue" {
  source                      = "../.."
  name                        = var.name
  visibility_timeout_seconds  = var.visibility_timeout_seconds
  message_retention_seconds   = var.message_retention_seconds
  max_message_size            = var.max_message_size
  delay_seconds               = var.delay_seconds
  receive_wait_time_seconds   = var.receive_wait_time_seconds
  fifo_queue                  = var.fifo_queue
  content_based_deduplication = var.content_based_deduplication
  deduplication_scope         = var.deduplication_scope
}

module "lambda-event-source-mapping" {
  source           = "../to-lambda-event-source-mapping"
  queue            = module.queue.arn
  lambda_arn       = var.lambda_arn
  lambda_role_name = var.lambda_role_name
  batch_size       = var.batch_size
  maximum_batching_window_in_seconds = var.maximum_batching_window_in_seconds
}
