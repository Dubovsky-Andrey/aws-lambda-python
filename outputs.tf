output "lambda_function_name" {
  value = module.lambda_function.lambda_function_name
}

output "lambda_function_arn" {
  value = module.lambda_function.lambda_function_arn
}

output "log_group_name" {
  value = module.lambda_function.log_group_name 
}