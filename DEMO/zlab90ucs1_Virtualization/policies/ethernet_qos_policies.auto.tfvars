#______________________________________________
#
# Ethernet QoS Policy Variables
#______________________________________________

ethernet_qos_policies = {
  "default" = {
    description           = ""
    enable_trust_host_cos = false
    mtu                   = 1500
    organization          = "zlab90ucs1_Virtualization"
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
  "ESX_data" = {
    description           = ""
    enable_trust_host_cos = false
    mtu                   = 1500
    organization          = "zlab90ucs1_Virtualization"
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
    organization          = "zlab90ucs1_Virtualization"
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
  "ESX_Storage_mtu9000" = {
    description           = ""
    enable_trust_host_cos = false
    mtu                   = 9000
    organization          = "zlab90ucs1_Virtualization"
    rate_limit            = 0
    tags                  = []
  }
}