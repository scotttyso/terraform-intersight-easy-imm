#______________________________________________
#
# IP Pool Variables
#______________________________________________

ip_pools = {
  "ip_pool_1" = {
    assignment_order = "sequential"
    ipv4_block = [
      {
        from = "10.92.110.96"
        to   = "10.92.110.127"
      },
      {
        from = "10.92.110.128"
        to   = "10.92.110.163"
      }
    ]
    ipv4_config = {
      config = {
        gateway       = "10.92.110.1"
        netmask       = "255.255.255.0"
        primary_dns   = "10.101.128.15"
        secondary_dns = "10.101.128.16"
      }
    }
    tags = []
  }
  "ext-mgmt-ipblock2" = {
    ipv4_block = [
      {
        from = "10.246.47.121"
        to   = "10.246.47.199"
      }
    ]
    ipv4_config = {
      config = {
        gateway = "10.246.47.254"
        netmask = "255.255.255.0"
      }
    }
    ipv6_block  = []
    ipv6_config = {}
    tags        = []
  }
  "ext-mgmt-ipblock3" = {
    ipv4_block = [
      {
        from = "192.168.20.100"
        to   = "192.168.20.109"
      }
    ]
    ipv4_config = {
      config = {
        gateway     = "192.168.20.1"
        netmask     = "255.255.255.0"
        primary_dns = "192.168.20.2"
      }
    }
    ipv6_block  = []
    ipv6_config = {}
    tags        = []
  }
  "ext-mgmt-ipblock4" = {
    ipv4_block = [
      {
        from = "192.168.156.113"
        to   = "192.168.156.128"
      }
    ]
    ipv4_config = {
      config = {
        gateway = "192.168.156.254"
        netmask = "255.255.255.0"
      }
    }
    ipv6_block  = []
    ipv6_config = {}
    tags        = []
  }
  "ext-mgmt" = {
    ipv4_block = [
      {
        from = "10.60.0.111"
        to   = "10.60.0.130"
      }
    ]
    ipv4_config = {
      config = {
        gateway = "10.60.0.1"
        netmask = "255.255.255.0"
      }
    }
    ipv6_block = [
      {
        from = "44::"
        size = "9"
      }
    ]
    ipv6_config = {
      config = {
        gateway       = "44::12"
        prefix        = "64"
        primary_dns   = "::"
        secondary_dns = "::"
      }
    }
    tags = []
  }
  "inband" = {
    ipv4_block = [
      {
        from = "192.168.20.50"
        to   = "192.168.20.94"
      }
    ]
    ipv4_config = {
      config = {
        gateway = "192.168.20.1"
        netmask = "255.255.255.0"
      }
    }
    ipv6_block  = []
    ipv6_config = {}
    tags        = []
  }
  "IP-INBAND-MGMT" = {
    ipv4_block = [
      {
        from = "192.168.60.1"
        to   = "192.168.60.100"
      }
    ]
    ipv4_config = {
      config = {
        gateway = "192.168.60.254"
        netmask = "255.255.255.0"
      }
    }
    ipv6_block  = []
    ipv6_config = {}
    tags        = []
  }
  "iscsi-initiator-pool" = {
    ipv4_block = [
      {
        from = "192.168.31.100"
        to   = "192.168.31.149"
      }
    ]
    ipv4_config = {
      config = {
        gateway = "192.168.31.1"
        netmask = "255.255.255.0"
      }
    }
    ipv6_block  = []
    ipv6_config = {}
    tags        = []
  }
}
