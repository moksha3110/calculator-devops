variable "aws_region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "calculator-app"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_1" {
  default = "10.0.1.0/24"
}

variable "public_subnet_2" {
  default = "10.0.2.0/24"
}

variable "container_port" {
  default = 5000
}

variable "ecr_image" {
  default = "757372703029.dkr.ecr.us-east-1.amazonaws.com/calculator-app:latest"
}

variable "container_name" {
  default = "calculator"
}