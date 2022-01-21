#______________________________________________
#
# SAN Connectivity Policy Variables
#______________________________________________

san_connectivity_policies = {
  "ESX6_San_Policy" = {
    description          = ""
    organization         = "zlab90ucs1_Virtualization"
    target_platform      = "FIAttached"
    vhba_placement_mode  = "auto"
    wwnn_allocation_type = "POOL"
    wwnn_static_address  = ""
    wwnn_pool            = "WWNN_Pod-46"
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
    vhbas = {
      "ESX_fc0" = {
        fibre_channel_adapter_policy = "VMWare"
        fibre_channel_network_policy = "LAB_VSAN_A_A"
        fibre_channel_qos_policy     = "default"
        name                         = "ESX_fc0"
        placement_pci_order          = 5
        placement_slot_id            = "MLOM"
        placement_switch_id          = "A"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "WWPN_Pod-46-A"
      },
      "ESX_fc1" = {
        fibre_channel_adapter_policy = "VMWare"
        fibre_channel_network_policy = "LAB_VSAN_B_B"
        fibre_channel_qos_policy     = "default"
        name                         = "ESX_fc1"
        placement_pci_order          = 6
        placement_slot_id            = "MLOM"
        placement_switch_id          = "B"
        wwpn_allocation_type         = "POOL"
        wwpn_pool                    = "WWPN_Pod-46-B"
      },
    }
  }
}