#______________________________________________
#
# Ethernet QoS Policy Variables
#______________________________________________

ethernet_qos_policies = {
  "Asgard_MANAGEMENT_qos" = {
    burst                 = 10240
    description           = "Virtualization Managment Ethernet QoS."
    enable_trust_host_cos = false
    priority              = "Silver"
    mtu                   = 9000
    organization          = "Asgard"
    rate_limit            = 0
    tags                  = []
  }
  "Asgard_MIGRATION_qos" = {
    burst                 = 10240
    description           = "Virtualization Migration Ethernet QoS."
    enable_trust_host_cos = false
    priority              = "Bronze"
    mtu                   = 9000
    organization          = "Asgard"
    rate_limit            = 0
    tags                  = []
  }
  "Asgard_STORAGE_qos" = {
    burst                 = 10240
    description           = "Virtualization Storage Ethernet QoS."
    enable_trust_host_cos = false
    priority              = "Priority"
    mtu                   = 9000
    organization          = "Asgard"
    rate_limit            = 0
    tags                  = []
  }
  "Asgard_Virtual_Machine_qos" = {
    burst                 = 10240
    description           = "Virtualization Virtual Machine Ethernet QoS."
    enable_trust_host_cos = false
    priority              = "Gold"
    mtu                   = 9000
    organization          = "Asgard"
    rate_limit            = 0
    tags                  = []
  }
  "Asgard_Windows_qos" = {
    burst                 = 10240
    description           = "Windows Ethernet QoS."
    enable_trust_host_cos = false
    priority              = "Gold"
    mtu                   = 9000
    organization          = "Asgard"
    rate_limit            = 0
    tags                  = []
  }
}
