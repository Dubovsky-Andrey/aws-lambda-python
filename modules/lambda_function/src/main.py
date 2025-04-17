def lambda_handler(event, context):
    # Entry point for AWS Lambda
    return {
        "statusCode": 200,
        "body": "Hello from Lambda aws-lambda-python!"
    }
