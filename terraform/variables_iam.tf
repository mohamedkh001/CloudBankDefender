variable "ec2_role_name" {
  description = "Name for the EC2 IAM Role"
  type        = string
  default     = "ec2-instance-role"
}

variable "ec2_policy_name" {
  description = "Name for the IAM policy attached to EC2 role"
  type        = string
  default     = "ec2-access-s3-policy"
}

variable "s3_bucket_arn" {
  description = "ARN of the S3 bucket EC2 instances can access"
  type        = string
  default     = "arn:aws:s3:::example-bucket/*"
}
