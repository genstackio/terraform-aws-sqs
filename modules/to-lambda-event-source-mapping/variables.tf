variable "enabled" {
  type    = bool
  default = true
}
variable "queue" {
  type = string
}
variable "lambda_arn" {
  type = string
}
variable "lambda_role_name" {
  type = string
}
variable "batch_size" {
  type    = number
  default = 1
}
variable "maximum_batching_window_in_seconds" {
  type    = number
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
