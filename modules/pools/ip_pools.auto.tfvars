#______________________________________________
#
# IP Pool Variables
#______________________________________________

ip_pools = {
  "IMC_pool" = {
    assignment_order = "sequential"
    ipv4_blocks = {
      "0" = {
        from = "10.92.101.96"
        # size = 32
        to   = "10.92.101.127"
      },
    }
    ipv4_config = {
      "config" = {
        gateway       = "10.92.101.1"
        netmask       = "255.255.255.0"
        primary_dns   = "10.101.128.15"
        secondary_dns = "10.101.128.16"
      }
    }
    ipv6_block   = []
    ipv6_config  = {}
    organization = "Asgard"
    tags         = []
  }
}
