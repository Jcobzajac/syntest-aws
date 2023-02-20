module "lambda_function" {
  source                = "terraform-aws-modules/lambda/aws"
  function_name         = var.lambda_function_name
  description           = "Develeap bucket optimizer lambda"
  handler               = "optimizer_lambda.lambda_handler" 
  runtime               = "python3.8"
  timeout = 30
  source_path           = "./scripts/optimizer_lambda.py" #DYNAMIC 
}
