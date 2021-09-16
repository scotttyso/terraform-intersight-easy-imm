#______________________________________________
#
# Ethernet Network Group Policy Variables
#______________________________________________

ethernet_network_group_policies = {
  "Asgard_MANAGEMENT_vg" = {
    allowed_vlans = "1101"
    description   = "Virtualization Management Vlan Group."
    organization  = "Asgard"
    tags          = []
  }
  "Asgard_MIGRATION_vg" = {
    allowed_vlans = "1102"
    description   = "Virtualization Migration Vlan Group."
    organization  = "Asgard"
    tags          = []
  }
  "Asgard_STORAGE_vg" = {
    allowed_vlans = "1103"
    description   = "Virtualization Storage Vlan Group."
    organization  = "Asgard"
    tags          = []
  }
  "Asgard_Virtual_Machine_vg" = {
    allowed_vlans = "1700-1799"
    description   = "Virtualization Virtual Machine Vlan Group."
    organization  = "Asgard"
    tags          = []
  }
  "Asgard_Windows_vg" = {
    allowed_vlans = "1101"
    description   = "Windows Vlan Group."
    native_vlan   = 1101
    organization  = "Asgard"
    tags          = []
  }
}
