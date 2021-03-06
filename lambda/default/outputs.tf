output "lambda_arn" {
  value = "${element(concat(aws_lambda_function.lambda.*.arn, aws_lambda_function.lambda_vpc.*.arn),0)}"
}

output "lambda_invoke_arn" {
  value = "${element(concat(aws_lambda_function.lambda.*.invoke_arn, aws_lambda_function.lambda_vpc.*.invoke_arn),0)}"
}

output "lambda_function_name" {
  value = "${element(concat(aws_lambda_function.lambda.*.function_name, aws_lambda_function.lambda_vpc.*.function_name),0)}"
}
