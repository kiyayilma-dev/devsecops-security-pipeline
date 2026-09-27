variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Ubuntu 22.04 AMI id for your region"
  # NOTE: AMI IDs change over time. If 'terraform plan' fails, 
  # you will need to update this ID from the AWS Console.
  default = "ami-0e2c8caa4b6378d8c" 
}

variable "key_pair_name" {
  description = "Name of the SSH key pair to use"
  default     = "devops-track-key"
}

variable "my_ip" {
  description = "Your public IP address for SSH access (e.g., 203.0.113.5)"
  type        = string
  # No default here! We will pass this securely via the command line.
}