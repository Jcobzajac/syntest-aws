module "lambda_function" {
  source                = "terraform-aws-modules/lambda/aws"
  function_name         = "function name"
  description           = "Syntest"
  handler               = "handler" 
  runtime               = "runtime"
  timeout = 30
  source_path           = "path/script" 
}
