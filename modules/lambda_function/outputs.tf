output "lambda_function_name" {
  value = aws_lambda_function.aws-lambda-function.function_name
}

output "lambda_function_arn" {
  value = aws_lambda_function.aws-lambda-function.arn
}

output "log_group_name" {
  value = "/aws/lambda/${aws_lambda_function.aws-lambda-function.function_name}" 
}
