# AWS region
aws_region                  = "us-east-1"

# Lambda function settings
lambda_function_name = "aws-lambda-python"
lambda_handler       = "main.lambda_handler"
lambda_runtime       = "python3.9"

# IAM role for Lambda
lambda_role_name   = "aws-lambda-python_role"
lambda_policy_arns = [
  "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
]

# Performance settings
lambda_timeout     = 30
lambda_memory_size = 128
