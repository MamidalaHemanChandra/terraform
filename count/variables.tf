variable "instances" {
    type = list
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ]
}

variable "zone_id" {
    type = string
    default = "Z00303221M2EO78HUMVX6"
}

variable "domain_name" {
    type = string
    default = "heman.icu"
}