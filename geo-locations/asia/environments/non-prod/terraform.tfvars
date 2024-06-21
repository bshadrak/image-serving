subnets = {
  "us-west" = {region = "us-west1", ip_cidr_range = "10.2.0.0/20" }
  "us-east" = {region = "us-east1", ip_cidr_range = "10.3.0.0/20" }
}
firewalls = {
  "allow-ssh" = {protocol = "tcp", ports = ["22"], source_ranges = ["0.0.0.0/0"], target_tags = ["ssh"]}
  "allow-http" = {protocol = "tcp", ports = ["80"], source_ranges = ["0.0.0.0/0"], target_tags = ["http-server"]}
  "allow-https" = {protocol = "tcp", ports = ["443"], source_ranges = ["0.0.0.0/0"], target_tags = ["https-server"]}
}

