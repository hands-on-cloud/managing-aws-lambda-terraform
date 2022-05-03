# How to manage AWS Lambda using Terraform - AWS Lambda inside VPC

This is a demo repository for the [Managing AWS Application Load Balancer (ALB) Using Terraform](https://hands-on.cloud/managing-aws-application-load-balancer-alb-using-terraform/) article.

This module sets up the following AWS services:

* AWS Lambda
* IAM Role for Lambda function
* IAM Policy for Lambda function
* CloudWatch Log Group for Lambda function

![AWS Lambda inside VPC](https://hands-on.cloud/wp-content/uploads/2022/05/How-to-manage-AWS-Lambda-using-Terraform-AWS-Lambda-inside-VPC.png)

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
