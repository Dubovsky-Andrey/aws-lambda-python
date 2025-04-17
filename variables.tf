# Lambda function name
variable "lambda_function_name" {
  description = "Lambda function name"
  type = string
}

variable "lambda_handler" {
  description = "Lambda function handler"
  type = string
}

variable "lambda_runtime" {
  description = "Lambda function runtime"
  type = string
}

variable "lambda_role_name" {
  description = "Lambda function role name"
  type = string
}

variable "lambda_policy_arns" {
  # list of arns
  type = list(string)
}

variable "lambda_timeout" {
  description = "Lambda function timeout"
  type = number
}

variable "lambda_memory_size" {
  description = "Lambda function memory size"
  type = number
}

# AWS region for provider
variable "aws_region" {
  description = "AWS region"
  type        = string
}