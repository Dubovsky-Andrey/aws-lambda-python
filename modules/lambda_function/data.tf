# modules/lambda_function/data.tf

data "archive_file" "lambda_zip" {
  type        = "zip"                        
  source_dir  = var.source_directory         
  output_path = "${path.module}/lambda.zip" 
}
