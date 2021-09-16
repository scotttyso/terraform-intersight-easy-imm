#______________________________________________
#
# SAN Connectivity Policy Variables
#______________________________________________

san_connectivity_policies = {
  "Asgard_Virtualzation" = {
    description          = "Asgard SAN Connectivity Policy for Virtual Hosts."
    organization         = "Asgard"
    target_platform      = "FIAttached"
    vhba_placement_mode  = "custom"
    wwnn_allocation_type = "POOL"
    wwnn_static_address  = ""
    wwnn_pool            = "Asgard_WWNN"
    tags                 = []
    vhbas = {
      "SAN-A" = {
        fibre_channel_adapter_policy = "Asgard_Virtualization"
        fibre_channel_network_policy = "Asgard_Fabric_A"
        fibre_channel_qos_policy     = "Asgard_fc_qos"
        name                         = "SAN-A"
        placement_pci_order          = 8
        placement_slot_id            = "MLOM"
        placement_switch_id          = "A"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "Asgard_WWPN_Fabric_A"
      },
      "SAN-B" = {
        fibre_channel_adapter_policy = "Asgard_Virtualization"
        fibre_channel_network_policy = "Asgard_Fabric_B"
        fibre_channel_qos_policy     = "Asgard_fc_qos"
        name                         = "SAN-B"
        placement_pci_order          = 9
        placement_slot_id            = "MLOM"
        placement_switch_id          = "B"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "Asgard_WWPN_Fabric_B"
      },
    }
  }
  "Asgard_Windows" = {
    description          = "Asgard SAN Connectivity Policy for Windows Hosts."
    organization         = "Asgard"
    target_platform      = "FIAttached"
    vhba_placement_mode  = "custom"
    wwnn_allocation_type = "POOL"
    wwnn_static_address  = ""
    wwnn_pool            = "Asgard_WWNN"
    tags                 = []
    vhbas = {
      "SAN-A" = {
        fibre_channel_adapter_policy = "Asgard_fc_Windows"
        fibre_channel_network_policy = "Asgard_Fabric_A"
        fibre_channel_qos_policy     = "Asgard_fc_qos"
        name                         = "SAN-A"
        placement_pci_order          = 1
        placement_slot_id            = "MLOM"
        placement_switch_id          = "A"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "Asgard_WWPN_Fabric_A"
      },
      "SAN-B" = {
        fibre_channel_adapter_policy = "Asgard_fc_Windows"
        fibre_channel_network_policy = "Asgard_Fabric_B"
        fibre_channel_qos_policy     = "Asgard_fc_qos"
        name                         = "SAN-B"
        placement_pci_order          = 2
        placement_slot_id            = "MLOM"
        placement_switch_id          = "B"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "Asgard_WWPN_Fabric_B"
      },
    }
  }
}
