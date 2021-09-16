#______________________________________________
#
# Ethernet Network Control Policy Variables
#______________________________________________

ethernet_network_control_policies = {
  "Asgard_both_enabled" = {
    cdp_enable           = true
    description          = "Asgard Both CDP and LLDP Enabled Network Control Policy."
    lldp_enable_receive  = true
    lldp_enable_transmit = true
    mac_register_mode    = "allVlans"
    mac_security_forge   = "allow"
    organization         = "Asgard"
    tags                 = []
  }
  "Asgard_cdp_enabled" = {
    cdp_enable           = true
    description          = "Asgard CDP Enabled Network Control Policy."
    lldp_enable_receive  = false
    lldp_enable_transmit = false
    mac_register_mode    = "allVlans"
    mac_security_forge   = "allow"
    organization         = "Asgard"
    tags                 = []
  }
  "Asgard_lldp_enabled" = {
    cdp_enable           = false
    description          = "Asgard LLDP Enabled Network Control Policy."
    lldp_enable_receive  = true
    lldp_enable_transmit = true
    mac_register_mode    = "allVlans"
    mac_security_forge   = "allow"
    organization         = "Asgard"
    tags                 = []
  }
}
