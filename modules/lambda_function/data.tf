# modules/lambda_function/data.tf

data "archive_file" "lambda_zip" {
  type        = var.file_type                        
  source_dir  = var.source_directory         
  output_path = "${path.module}/${var.zip_path}" 
}
