variable "instances" {
    default = [ "mongodb","redis", "mysql" ]
    # default = {
    #     mongodb : "t3.micro"
    #     redis : "t3.micro"
    #     mysql : "t3.small"
    # }
}

variable "zone_id" {
    default = "Z00303221M2EO78HUMVX6"
}

variable "domain_name" {
    default = "heman.icu"
}

