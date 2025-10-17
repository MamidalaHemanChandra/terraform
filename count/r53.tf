resource "aws_route53_record" "roboshop" {
  zone_id = Z00303221M2EO78HUMVX6
  name    = "${var.instances[count.index].$(domain_name)}"
  type    = "A"
  ttl     = 1
  records = [var.instances[count.index].private_ip]
}