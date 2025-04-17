# AWS Lambda Python Project

## Overview

This project deploys a Python-based AWS Lambda function using Terraform. The Lambda function returns a simple "Hello" response with a 200 status code.

## Prerequisites

- AWS CLI configured
- Terraform (version >= 1.11.3)
- Python 3.9

## Project Structure

```
aws-lambda-python/
├── modules/
│   └── lambda_function/          # Lambda module
│       ├── src/                  # Python source code
│       │   └── main.py          # Lambda handler
│       ├── data.tf              # Archive file configuration
│       ├── iam.tf               # IAM roles and policies
│       ├── lambda.tf            # Lambda function configuration
│       ├── outputs.tf           # Module outputs
│       └── variables.tf         # Module variables
├── backend.tf                   # S3 backend configuration
├── main.tf                     # Main Terraform configuration
├── outputs.tf                  # Project outputs
├── providers.tf                # AWS provider configuration
├── variables.tf                # Project variables
├── versions.tf                 # Version constraints
└── terraform.tfvars           # Variable values
```

## Configuration

### State Management

The project uses an S3 backend for state management:

```hcl
bucket = "dubovsky-andrey-terraform-stage-bucket"
key    = "aws-lambda-python/terraform.tfstate"
region = "us-east-1"
```

### Lambda Function Settings

The Lambda function is configured with:

- Runtime: Python 3.9
- Handler: main.lambda_handler
- Memory: 128 MB
- Timeout: 30 seconds
- Basic execution role

## Deployment

1. Initialize Terraform:

```bash
terraform init
```

2. Review the deployment plan:

```bash
terraform plan
```

3. Apply the changes:

```bash
terraform apply
```

## Outputs

After deployment, the following outputs are available:

- `lambda_function_name`: Name of the deployed Lambda function
- `lambda_function_arn`: ARN of the Lambda function
- `log_group_name`: CloudWatch Log Group name for Lambda logs

## Lambda Function Code

The Lambda function returns a simple response:

```python
def lambda_handler(event, context):
    return {
        "statusCode": 200,
        "body": "Hello from Lambda aws-lambda-python!"
    }
```

## Testing the Function

After deployment, you can test the Lambda function using AWS CLI:

1. Invoke the function and save the response:

```bash
aws lambda invoke \
  --function-name my_lambda_function \
  --payload '{}' \
  response.json
```

2. View the response body:

```bash
cat response.json
```

Expected output:

```json
{
  "statusCode": 200,
  "body": "Hello from Lambda aws-lambda-python!"
}
```

3. Check the most recent CloudWatch logs:

```bash
aws logs filter-log-events \
  --log-group-name /aws/lambda/my_lambda_function \
  --limit 5
```

This will show the last 5 log entries from your Lambda function's execution, including any custom logging messages, errors, or execution details.

Note: Replace `aws-lambda-python` with your actual Lambda function name from the outputs.
