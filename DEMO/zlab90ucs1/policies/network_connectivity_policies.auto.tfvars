#______________________________________________
#
# Network Connectivity (DNS) Policy Variables
#______________________________________________

network_connectivity_policies = {
  "zlab90ucs1" = {
    description   = ""
    enable_ipv6   = false
    organization  = "zlab90ucs1"
    update_domain = ""
    dns_servers_v4 = [
      "192.43.1.95",
      "204.54.163.95"
    ]
    tags = [
      {
        key   = "easyucs_origin",
        value = "convert",
      },
      {
        key   = "easyucs_version",
        value = "0.9.8",
      },
    ]
  }
}