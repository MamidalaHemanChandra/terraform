variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq" ]
    # default = {
    #     mongodb = "t3.micro"
    #     redis = "t3.micro"
    # }
}

variable "zone_id" {
    type = string
    default = "Z00303221M2EO78HUMVX6"
}

variable "domain_name" {
    type = string
    default = "heman.icu"
}