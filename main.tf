# main.tf

module "lambda_function" {
  source           = "./modules/lambda_function"
  function_name    = var.lambda_function_name
  handler          = var.lambda_handler
  runtime          = var.lambda_runtime
  source_directory = "${path.module}/modules/lambda_function/src"
  lambda_role_name = var.lambda_role_name
  policy_arns      = var.lambda_policy_arns
  timeout          = var.lambda_timeout
  memory_size      = var.lambda_memory_size
}
