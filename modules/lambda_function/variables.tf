variable "function_name" {
  type = string
}

variable "handler" {
  type = string
}

variable "runtime" {
  type = string
}

variable "source_directory" {
  type = string
}

variable "lambda_role_name" {
  type = string
}

variable "policy_arns" {
  type = list(string)
}

variable "timeout" {
  type = number
}

variable "memory_size" {
  type = number
}

variable "file_type" {
  type = string
}

variable "zip_path" {
  type = string
}