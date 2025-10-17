resource "aws_route53_record" "roboshop" {
  zone_id = var.zone_id
  name    = "${var.instances[count.index].$(domain_name)}"
  type    = "A"
  ttl     = 1
  records = [var.instances[count.index].private_ip]
  allow_overwrite = true
}