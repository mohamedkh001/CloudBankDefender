# AWS Region to deploy the infrastructure
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# Project name to tag resources
variable "project_name" {
  description = "The name of the project (used in tagging and naming resources)"
  type        = string
  default     = "CloudBankDefender"
}

# Deployment environment: dev, staging, prod
variable "environment" {
  description = "Deployment environment (dev/staging/prod)"
  type        = string
  default     = "dev"
}

# VPC CIDR block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Public subnet CIDR blocks
variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Private subnet CIDR blocks
variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

# Enable detailed monitoring
variable "enable_detailed_monitoring" {
  description = "Enable detailed monitoring for instances"
  type        = bool
  default     = false
}
variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c02fb55956c7d316" # Ubuntu Server 22.04 LTS (تأكد من المنطقة)
}

variable "ec2_instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ec2_key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "your-key-name" 
}
variable "alb_name" {
  description = "Name of the Application Load Balancer"
  default     = "cloudbank-alb"
}


variable "environment" {
  description = "Deployment environment (e.g. dev, prod)"
  default     = "dev"
}

variable "project_name" {
  description = "Name of the project"
  default     = "CloudBankDefender"
}
variable "project_name" {
  description = "Project name"
  type        = string
  default     = "cloudbankdefender"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "private_subnets" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "db_instance_class" {
  description = "RDS instance type"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "RDS allocated storage (in GB)"
  type        = number
  default     = 20
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "cloudbankdb"
}

variable "db_username" {
  description = "Database master username"
  type        = string
}

variable "db_password" {
  description = "Database master password"
  type        = string
  sensitive   = true
}
