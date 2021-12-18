#______________________________________________
#
# UCS Domain Profiles
#______________________________________________

ucs_domain_profiles = {
  "asgard-ucs" = {
    action                      = "No-op"
    assign_switches             = true
    description                 = "Asgard UCS Domain Profile."
    device_model                = "UCS-FI-64108" # Options are UCS-FI-6454 or UCS-FI-64108 Currently
    network_connectivity_policy = "Richfield"
    ntp_policy                  = "Richfield"
    organization                = "Asgard"
    port_policy_fabric_a        = "asgard-ucs-a"
    port_policy_fabric_b        = "asgard-ucs-b"
    snmp_policy                 = "Asgard_domain"
    serial_number_fabric_a      = "FDO23360Y8U"
    serial_number_fabric_b      = "FDO23360XWU"
    switch_control_policy       = "swctrl"
    syslog_policy               = "Richfield_domain"
    system_qos_policy           = "Richfield"
    vlan_policy_fabric_a        = "asgard-ucs"
    vlan_policy_fabric_b        = "asgard-ucs"
    vsan_policy_fabric_a        = "Richfield_A"
    vsan_policy_fabric_b        = "Richfield_B"
    tags                        = []
  }
}
