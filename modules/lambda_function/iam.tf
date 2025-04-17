# modules/lambda_function/iam.tf

resource "aws_iam_role" "lambda_exec_role" {
  name = var.lambda_role_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": { "Service": "lambda.amazonaws.com" },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_policies" {
  for_each   = toset(var.policy_arns)
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = each.value
}
