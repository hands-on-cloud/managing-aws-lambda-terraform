output "lambda_name" {
  value = aws_lambda_function.vpc_lambda.function_name
  description = "Lambda function name"
}

output "lambda_arn" {
  value = aws_lambda_function.vpc_lambda.arn
  description = "Lambda function ARN"
}

output "sync_invoke_cmd" {
  value = "aws lambda invoke --function-name ${aws_lambda_function.vpc_lambda.function_name} --cli-binary-format raw-in-base64-out /tmp/${aws_lambda_function.vpc_lambda.function_name}-response.json"
  description = "Synchronous Lambda execution AWS CLI command"
}

output "sync_invoke_cmd_with_payload" {
  value = "aws lambda invoke --function-name ${aws_lambda_function.vpc_lambda.function_name} --cli-binary-format raw-in-base64-out --payload file://${local.lambda_code_path}/demo_event.json /tmp/${aws_lambda_function.vpc_lambda.function_name}-response.json"
  description = "Synchronous Lambda execution AWS CLI command (with file payload)"
}
