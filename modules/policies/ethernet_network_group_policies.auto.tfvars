#______________________________________________
#
# Ethernet Network Group Policy Variables
#______________________________________________

ethernet_network_group_policies = {
  "ACI" = {
    allowed_vlans = "101-199,201-299,1100-1299,1700-1799"
    description   = "Virtualization Virtual Machine Vlan Group"
    organization  = "Asgard"
    tags          = []
  }
  "ACI_Dynamic" = {
    allowed_vlans = "1700-1799"
    description   = "Virtualization Virtual Machine Vlan Group"
    organization  = "Asgard"
    tags          = []
  }
  "MGMT" = {
    allowed_vlans = "1101"
    description   = "MGMT Vlan Group"
    native_vlan   = 1101
    organization  = "Asgard"
    tags          = []
  }
  "MIGRATION" = {
    allowed_vlans = "1102"
    description   = "Virtualization Migration Vlan Group"
    native_vlan   = 1102
    organization  = "Asgard"
    tags          = []
  }
  "STORAGE" = {
    allowed_vlans = "1103"
    description   = "Virtualization Storage Vlan Group"
    native_vlan   = 1103
    organization  = "Asgard"
    tags          = []
  }
  "v1101" = {
    allowed_vlans = "1101"
    description   = "VLAN 1101 Vlan Group"
    native_vlan   = 1101
    organization  = "Asgard"
    tags          = []
  }
}
