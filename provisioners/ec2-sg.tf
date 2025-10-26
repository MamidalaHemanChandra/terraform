resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name = "terraform"
    Terraform = "true"
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory"
    on_failure = continue
  }

  provisioner "local-exec" {
    command = "echo Instance is destroyed"
    when = destroy
  }

}



resource "aws_security_group" "allow_all" {
  name        = "allow-all"
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
 

  tags = {
    Name = "allow-all"
  }
}