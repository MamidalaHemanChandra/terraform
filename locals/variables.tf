variable "project" {
    default = "roboshop"
} 

variable "environment" {
    default = "dev"
} 

# variable "common_name" {
#     default = "${var.project}-${var.environment}"
# } 

variable "common_tags" {
    type = map
    default = {
        Name = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}


variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    #default = "t3.micro"
}



variable "sg_name" {
    type = string
    default = "allow-all"
  description = "Allow TLS inbound traffic and all outbound traffic"
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

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}