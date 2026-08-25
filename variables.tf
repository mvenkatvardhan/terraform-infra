variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-south-1"   # <-- change if you're using a different region
}

variable "availability_zone" {
  description = "Availability zone for the public subnet"
  type        = string
  default     = "ap-south-1a"   # <-- must match aws_region above (e.g. eu-north-1a if region is eu-north-1)
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed to SSH into the instance (0.0.0.0/0 = anywhere, restrict to your IP for safety)"
  type        = string
  default     = "0.0.0.0/0"
}
