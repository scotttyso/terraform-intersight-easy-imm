#______________________________________________
#
# IP Pool Variables
#______________________________________________

ip_pools = {
  "ext-mgmt-ipblock2" = {
    ipv4_blocks = {
      "1" = {
        from = "204.53.10.12"
        size = 8
        # to   = "204.53.10.19"
      },
    }
    ipv4_config = {
      config = {
        gateway       = "204.53.10.30"
        netmask       = "255.255.255.224"
        primary_dns   = "199.197.58.95"
        secondary_dns = "192.43.1.3"
      }
    }
    ipv6_blocks  = {}
    ipv6_configs = {}
    organization = "zlab90ucs1"
    tags         = []
  }
  "ext-mgmt" = {
    ipv4_blocks = {
      "1" = {
        from = "204.53.10.4"
        size = 8
        # to   = "204.53.10.11"
      },
    }
    ipv4_config = {
      config = {
        gateway       = "204.53.10.30"
        netmask       = "255.255.255.224"
        primary_dns   = "192.43.1.95"
        secondary_dns = "204.54.163.95"
      }
    }
    ipv6_blocks  = {}
    ipv6_configs = {}
    organization = "zlab90ucs1"
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