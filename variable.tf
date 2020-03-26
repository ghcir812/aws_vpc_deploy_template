# Project wide variable
variable "PROJECT_NAME" {
}

# Varibles for the Providers
variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
}


# Ec2 /Autoscaling Variables
variable "SSH_CIDR_WEB_SERVER" {
}

variable "WEB_SERVER_INSTANCE_TYPE" {
}

variable "USER_DATA_FOR_WEBSERVER" {
}

variable "PEM_FILE_WEBSERVERS" {
}


# VPC Variables
variable "VPC_CIDR_BLOCK" {
}

variable "VPC_PUBLIC_SUBNET1_CIDR_BLOCK" {
}

variable "VPC_PUBLIC_SUBNET2_CIDR_BLOCK" {
}

variable "VPC_PRIVATE_SUBNET1_CIDR_BLOCK" {
}

variable "VPC_PRIVATE_SUBNET2_CIDR_BLOCK" {
}
