#______________________________________________
#
# Ethernet QoS Policy Variables
#______________________________________________

ethernet_qos_policies = {
  "ESX_data" = {
    description           = ""
    enable_trust_host_cos = false
    mtu                   = 1500
    organization          = "zlab90ucs1"
    rate_limit            = 0
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
  "ESX_Storage" = {
    description           = ""
    enable_trust_host_cos = false
    mtu                   = 1500
    organization          = "zlab90ucs1"
    rate_limit            = 0
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