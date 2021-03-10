resource "aws_sqs_queue_policy" "queue" {
  for_each  = var.policies
  queue_url = each.value.id
  policy    = data.aws_iam_policy_document.queue[each.key].json
}