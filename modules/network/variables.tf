variable "network_name" {
}
variable "ip_cidr_range" {
}
variable "subnets" {
  type = map(object({
    region  = string
    ip_cidr_range = string
  }))

}
variable "project" {
}
variable "firewalls" {
  type = map(object({
    ports = list(string)
    protocol = string
    source_ranges = list(string)
    target_tags = list(string)
  }))

}