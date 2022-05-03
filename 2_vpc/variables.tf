variable "prefix" {
  default     = "managing-aws-lambda-terraform"
  description = "Common prefix for AWS resources names"
}

variable "aws_region" {
  default     = "us-east-1"
  description = "AWS Region to deploy VPC"
}
