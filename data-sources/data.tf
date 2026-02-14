data "aws_ami" "heman" {
    owners           = ["973714476881"]
    most_recent      = true
    filter {
        name   = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

output "ami_id" {
  value       = data.aws_ami.heman.id
}

data "aws_instance" "redis" {
    instance_id = "i-033864287157d4d91"
}

output "redis_info" {
  value       = data.aws_instance.redis.private_ip
}