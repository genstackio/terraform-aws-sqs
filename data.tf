data "aws_sqs_queue" "queue" {
  name       = var.name
  depends_on = [aws_sqs_queue.queue]
}