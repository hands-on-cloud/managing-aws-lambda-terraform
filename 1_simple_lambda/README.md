<!-- BEGIN_TF_DOCS -->

# How to manage AWS Lambda using Terraform - Simple AWS Lambda function deployment

This is a demo repository for the [How to manage AWS Lambda using Terraform](https://hands-on.cloud/how-to-manage-aws-lambda-using-terraform/) article.

This module deploys the following AWS services:

* AWS Lambda
* IAM Role for Lambda function
* IAM Policy for Lambda function
* CloudWatch Log Group for Lambda function

![How to manage AWS Lambda using Terraform - Simple AWS Lambda function deployment](https://hands-on.cloud/wp-content/uploads/2022/04/How-to-manage-AWS-Lambda-using-Terraform-Simple-Lambda.png)

## Deployment

```sh
terraform init
terraform plan
terraform apply -auto-approve
```

## Tier down

```sh
terraform destroy -auto-approve
```
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region to deploy VPC | `string` | `"us-east-1"` | no |
## Modules

No modules.
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_arn"></a> [lambda\_arn](#output\_lambda\_arn) | Lambda function ARN |
| <a name="output_lambda_name"></a> [lambda\_name](#output\_lambda\_name) | Lambda function name |
| <a name="output_sync_invoke_cmd"></a> [sync\_invoke\_cmd](#output\_sync\_invoke\_cmd) | Synchronous Lambda execution AWS CLI command |
| <a name="output_sync_invoke_cmd_with_payload"></a> [sync\_invoke\_cmd\_with\_payload](#output\_sync\_invoke\_cmd\_with\_payload) | Synchronous Lambda execution AWS CLI command (with file payload) |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | 2.2.0 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.11.0 |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.9 |
## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.simple_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_role.simple_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_lambda_function.simple_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [archive_file.simple_lambda_zip](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [aws_iam_policy_document.simple_lambda_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

<!-- END_TF_DOCS -->