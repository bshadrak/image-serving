variable "network_name" {
}

variable "subnets" {
  type = map(object({
    region = string
    ip_cidr_range = string
  }))
}
variable "firewalls" {
  type = map(object({
    protocol = string
    ports = list(string)
    source_ranges = list(string)
    target_tags=  list(string)
  }))
}
variable "ip_cidr_range" {
  
}
variable "" {
  
}