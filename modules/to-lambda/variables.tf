variable "name" {
  type = string
}
variable "lambda_arn" {
  type    = string
}
variable "lambda_role_name" {
  type    = string
}
variable "visibility_timeout_seconds" {
  type    = number
  default = null
}
variable "message_retention_seconds" {
  type    = number
  default = null
}
variable "max_message_size" {
  type    = number
  default = null
}
variable "delay_seconds" {
  type    = number
  default = null
}
variable "receive_wait_time_seconds" {
  type    = number
  default = null
}
variable "fifo_queue" {
  type    = bool
  default = null
}
variable "batch_size" {
  type    = number
  default = 1
}
variable "maximum_batching_window_in_seconds" {
  type    = number
  default = null
}
variable "content_based_deduplication" {
  type    = bool
  default = null
}
variable "deduplication_scope" {
  type    = bool
  default = null
}
variable "maximum_concurrency" {
  type    = number
  default = null
}
variable "function_response_types" {
  type    = list(string)
  default = null
}
