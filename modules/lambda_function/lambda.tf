resource "aws_lambda_function" "aws-lambda-function" {
  function_name    = var.function_name
  role             = aws_iam_role.lambda_exec_role.arn
  handler          = var.handler
  runtime          = var.runtime
  filename         = data.archive_file.lambda_zip.output_path
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
  timeout          = var.timeout
  memory_size      = var.memory_size

  depends_on = [
    aws_iam_role_policy_attachment.lambda_policies
  ]
}
