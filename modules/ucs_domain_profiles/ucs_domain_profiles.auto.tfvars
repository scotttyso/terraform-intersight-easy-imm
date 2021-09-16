#______________________________________________
#
# UCS Domain Profiles
#______________________________________________

ucs_domain_profiles = {
  "asgard-ucs" = {
    action                      = "No-op"
    assign_switches             = true
    description                 = "Asgard UCS Domain Profile."
    device_model                = "UCS-FI-6454" # Options are UCS-FI-6454 or UCS-FI-64108 Currently
    network_connectivity_policy = "Asgard_dns"
    ntp_policy                  = "Asgard_ntp"
    organization                = "Asgard"
    port_policy_fabric_a        = "Asgard_Fabric_A"
    port_policy_fabric_b        = "Asgard_Fabric_B"
    snmp_policy                 = "Asgard_snmp"
    serial_number_fabric_a      = "FDO23360Y8U"
    serial_number_fabric_b      = "FDO23360XWU"
    switch_control_policy       = "Asgard_swctrl"
    syslog_policy               = "Asgard_syslog"
    system_qos_policy           = "Asgard_system_qos"
    vlan_policy_fabric_a        = "Asgard_vlans"
    vlan_policy_fabric_b        = "Asgard_vlans"
    vsan_policy_fabric_a        = "Asgard_Fabric_A"
    vsan_policy_fabric_b        = "Asgard_Fabric_B"
    tags                        = []
  }
}
