#______________________________________________
#
# LAN Connectivity Policy Variables
#______________________________________________

lan_connectivity_policies = {
  "Linux" = {
    description         = "LAN Connectivity Policy - Linux"
    vnic_placement_mode = "custom"
    target_platform     = "FIAttached"
    tags                = []
    vnics = {
      "Ethernet" = {
        enable_failover                 = true
        ethernet_adapter_policy         = "Linux"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "v1101"
        ethernet_qos_policy             = "Gold"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "FAILOVER"
        name                            = "Ethernet"
        placement_pci_order             = 0
        placement_slot_id               = "MLOM"
        placement_switch_id             = "B"
      }
    }
  }
  "Virtualization" = {
    description         = "LAN Connectivity Policy - VMware"
    vnic_placement_mode = "custom"
    target_platform     = "FIAttached"
    tags                = []
    vnics = {
      "MGMT-A" = {
        ethernet_adapter_policy         = "VMware"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "MGMT"
        ethernet_qos_policy             = "Silver"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "MGMT-A"
        name                            = "MGMT-A"
        placement_pci_order             = 0
        placement_slot_id               = "MLOM"
        placement_switch_id             = "A"
      },
      "MGMT-B" = {
        ethernet_adapter_policy         = "VMware"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "MGMT"
        ethernet_qos_policy             = "Silver"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "MGMT-B"
        name                            = "MGMT-B"
        placement_pci_order             = 1
        placement_slot_id               = "MLOM"
        placement_switch_id             = "B"
      },
      "MIGRATION-A" = {
        ethernet_adapter_policy         = "VMware"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "MIGRATION"
        ethernet_qos_policy             = "Bronze"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "MIGRATION-A"
        name                            = "MIGRATION-A"
        placement_pci_order             = 2
        placement_slot_id               = "MLOM"
        placement_switch_id             = "A"
      },
      "MIGRATION-B" = {
        ethernet_adapter_policy         = "VMware"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "MIGRATION"
        ethernet_qos_policy             = "Bronze"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "MIGRATION-B"
        name                            = "MIGRATION-B"
        placement_pci_order             = 3
        placement_slot_id               = "MLOM"
        placement_switch_id             = "B"
      },
      "STORAGE-A" = {
        ethernet_adapter_policy         = "VMware"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "STORAGE"
        ethernet_qos_policy             = "Platinum"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "STORAGE-A"
        name                            = "STORAGE-A"
        placement_pci_order             = 4
        placement_slot_id               = "MLOM"
        placement_switch_id             = "A"
      },
      "STORAGE-B" = {
        ethernet_adapter_policy         = "VMware"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "STORAGE"
        ethernet_qos_policy             = "Platinum"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "STORAGE-B"
        name                            = "STORAGE-B"
        placement_pci_order             = 5
        placement_slot_id               = "MLOM"
        placement_switch_id             = "B"
      },
      "DATA-A" = {
        ethernet_adapter_policy         = "VMware"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "ACI_Dynamic"
        ethernet_qos_policy             = "Gold"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "DATA-A"
        name                            = "DATA-A"
        placement_pci_order             = 6
        placement_slot_id               = "MLOM"
        placement_switch_id             = "A"
      },
      "DATA-B" = {
        ethernet_adapter_policy         = "VMware"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "ACI_Dynamic"
        ethernet_qos_policy             = "Gold"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "DATA-B"
        name                            = "DATA-B"
        placement_pci_order             = 7
        placement_slot_id               = "MLOM"
        placement_switch_id             = "B"
      },
    }
  }
  "Windows" = {
    description         = "LAN Connectivity Policy - Windows"
    vnic_placement_mode = "custom"
    target_platform     = "FIAttached"
    tags                = []
    vnics = {
      "Ethernet" = {
        enable_failover                 = true
        ethernet_adapter_policy         = "Windows"
        ethernet_network_control_policy = "lldp_enabled"
        ethernet_network_group_policy   = "v1101"
        ethernet_qos_policy             = "Gold"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "FAILOVER"
        name                            = "Ethernet"
        placement_pci_order             = 0
        placement_slot_id               = "MLOM"
        placement_switch_id             = "A"
      }
    }
  }
}
