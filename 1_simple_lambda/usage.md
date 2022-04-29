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
