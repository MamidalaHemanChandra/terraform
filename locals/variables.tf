variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

# variable "common_name" {
#     default = "${var.project}-${var.environment}"
# }

variable "ami_id" {
  type        = string
# default     = "ami-0220d79f3f480ecf5"
    default     = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "common_tags" {
    type = map
    default = {
        Terraform = "True"
        Project = "Roboshop"
        Environment = "dev"
    }
}

variable "sg_name" {  
    type = string
    default = "allow_all"
    description = "Security group attached to ec2 instance"
}

variable "egress_from_port" {
    type = number
    default = 0
}

variable "egress_to_port" {
    type = number
    default = 0
}

variable "ingress_from_port" {
    type = number
    default = 0
}

variable "ingress_to_port" {
    type = number
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}