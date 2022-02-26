#______________________________________________
#
# Ethernet QoS Policy Variables
#______________________________________________

ethernet_qos_policies = {
  "Bronze" = {
    burst                 = 10240
    description           = "Bronze Priority QoS"
    enable_trust_host_cos = false
    priority              = "Bronze"
    mtu                   = 9000
    rate_limit            = 0
    tags                  = []
  }
  "Gold" = {
    burst                 = 10240
    description           = "Gold Priority QoS"
    enable_trust_host_cos = false
    priority              = "Gold"
    mtu                   = 9000
    rate_limit            = 0
    tags                  = []
  }
  "Platinum" = {
    burst                 = 10240
    description           = "Platinum Priority QoS"
    enable_trust_host_cos = false
    priority              = "Platinum"
    mtu                   = 9000
    rate_limit            = 0
    tags                  = []
  }
  "Silver" = {
    burst                 = 10240
    description           = "Silver Priority QoS"
    enable_trust_host_cos = false
    priority              = "Silver"
    mtu                   = 9000
    rate_limit            = 0
    tags                  = []
  }
}
