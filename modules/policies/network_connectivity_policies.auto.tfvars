#______________________________________________
#
# (DNS) Network Connectivity Policy Variables
#______________________________________________

network_connectivity_policies = {
  "Asgard_dns" = {
    description        = "Asgard DNS Policy."
    dns_servers_v6     = []
    enable_dynamic_dns = false
    enable_ipv6        = true
    organization       = "Asgard"
    tags               = []
    update_domain      = ""
    dns_servers_v4 = [
      "10.101.128.15",
      "10.101.128.16"
    ]
    dns_servers_v6 = [
      "::",
      "::"
    ]
    tags = []
  }
}
