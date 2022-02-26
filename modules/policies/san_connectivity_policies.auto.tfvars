#______________________________________________
#
# SAN Connectivity Policy Variables
#______________________________________________

san_connectivity_policies = {
  "Linux" = {
    description          = "SAN Connectivity Policy - Linux"
    target_platform      = "FIAttached"
    vhba_placement_mode  = "custom"
    wwnn_allocation_type = "POOL"
    wwnn_static_address  = ""
    wwnn_pool            = "WWNNs"
    tags                 = []
    vhbas = {
      "HBA-A" = {
        fibre_channel_adapter_policy = "Linux"
        fibre_channel_network_policy = "HBA-A"
        fibre_channel_qos_policy     = "FC"
        name                         = "HBA-A"
        placement_pci_order          = 1
        placement_slot_id            = "MLOM"
        placement_switch_id          = "A"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "HBA-A"
      },
      "HBA-B" = {
        fibre_channel_adapter_policy = "Linux"
        fibre_channel_network_policy = "HBA-B"
        fibre_channel_qos_policy     = "FC"
        name                         = "HBA-B"
        placement_pci_order          = 2
        placement_slot_id            = "MLOM"
        placement_switch_id          = "B"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "HBA-B"
      },
    }
  }
  "Virtualization" = {
    description          = "SAN Connectivity Policy - Virtualization"
    target_platform      = "FIAttached"
    vhba_placement_mode  = "custom"
    wwnn_allocation_type = "POOL"
    wwnn_static_address  = ""
    wwnn_pool            = "WWNNs"
    tags                 = []
    vhbas = {
      "HBA-A" = {
        fibre_channel_adapter_policy = "Virtualization"
        fibre_channel_network_policy = "HBA-A"
        fibre_channel_qos_policy     = "FC"
        name                         = "HBA-A"
        placement_pci_order          = 8
        placement_slot_id            = "MLOM"
        placement_switch_id          = "A"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "HBA-A"
      },
      "HBA-B" = {
        fibre_channel_adapter_policy = "Virtualization"
        fibre_channel_network_policy = "HBA-B"
        fibre_channel_qos_policy     = "FC"
        name                         = "HBA-B"
        placement_pci_order          = 9
        placement_slot_id            = "MLOM"
        placement_switch_id          = "B"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "HBA-B"
      },
    }
  }
  "Windows" = {
    description          = "SAN Connectivity Policy - Windows"
    target_platform      = "FIAttached"
    vhba_placement_mode  = "custom"
    wwnn_allocation_type = "POOL"
    wwnn_static_address  = ""
    wwnn_pool            = "WWNNs"
    tags                 = []
    vhbas = {
      "HBA-A" = {
        fibre_channel_adapter_policy = "Windows"
        fibre_channel_network_policy = "HBA-A"
        fibre_channel_qos_policy     = "FC"
        name                         = "HBA-A"
        placement_pci_order          = 1
        placement_slot_id            = "MLOM"
        placement_switch_id          = "A"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "HBA-A"
      },
      "HBA-B" = {
        fibre_channel_adapter_policy = "Windows"
        fibre_channel_network_policy = "HBA-B"
        fibre_channel_qos_policy     = "FC"
        name                         = "HBA-B"
        placement_pci_order          = 2
        placement_slot_id            = "MLOM"
        placement_switch_id          = "B"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "HBA-B"
      },
    }
  }
}
