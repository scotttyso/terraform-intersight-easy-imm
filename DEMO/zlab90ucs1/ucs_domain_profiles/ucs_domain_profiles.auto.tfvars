#______________________________________________
#
# UCS Domain Profile Variables
#______________________________________________

ucs_domain_profiles = {
  "zlab90ucs1" = {
    action                      = "No-op"
    assign_switches             = false
    description                 = ""
    device_model                = "UCS-FI-6454"
    network_connectivity_policy = "zlab90ucs1"
    ntp_policy                  = "zlab90ucs1"
    organization                = "zlab90ucs1"
    port_policy_fabric_a        = "zlab90ucs1-A"
    port_policy_fabric_b        = "zlab90ucs1-B"
    snmp_policy                 = "zlab90ucs1"
    serial_number_fabric_a      = ""
    serial_number_fabric_b      = ""
    switch_control_policy       = "zlab90ucs1"
    syslog_policy               = "zlab90ucs1"
    system_qos_policy           = "zlab90ucs1"
    vlan_policy_fabric_a        = "zlab90ucs1"
    vlan_policy_fabric_b        = "zlab90ucs1"
    vsan_policy_fabric_a        = "zlab90ucs1-A"
    vsan_policy_fabric_b        = "zlab90ucs1-B"
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