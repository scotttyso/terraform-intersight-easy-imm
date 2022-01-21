#______________________________________________
#
# LAN Connectivity Policy Variables
#______________________________________________

lan_connectivity_policies = {
  "esxLanConPolicy" = {
    description                 = ""
    enable_azure_stack_host_qos = false
    iqn_allocation_type         = "None"
    organization                = "zlab90ucs1_Virtualization"
    vnic_placement_mode         = "custom"
    target_platform             = "FIAttached"
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
    vnics = {
      "ESX_Storage_A" = {
        cdn_source                      = "vnic"
        enable_failover                 = false
        ethernet_adapter_policy         = "default"
        ethernet_network_control_policy = "ESX"
        ethernet_network_group_policy   = "ESX_storage_vlanGroup"
        ethernet_qos_policy             = "ESX_Storage_mtu9000"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "Pod-46"
        name                            = "ESX_Storage_A"
        placement_pci_order             = 1
        placement_slot_id               = "MLOM"
        placement_switch_id             = "A"
      },
      "ESX_Storage_B" = {
        cdn_source                      = "vnic"
        enable_failover                 = false
        ethernet_adapter_policy         = "VMWare"
        ethernet_network_control_policy = "ESX"
        ethernet_network_group_policy   = "ESX_storage_vlanGroup"
        ethernet_qos_policy             = "ESX_Storage_mtu9000"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "Pod-46"
        name                            = "ESX_Storage_B"
        placement_pci_order             = 2
        placement_slot_id               = "MLOM"
        placement_switch_id             = "B"
      },
      "ESX_data_A" = {
        cdn_source                      = "vnic"
        enable_failover                 = false
        ethernet_adapter_policy         = "VMWare"
        ethernet_network_control_policy = "ESX"
        ethernet_network_group_policy   = "ESX_data_vlanGroup"
        ethernet_qos_policy             = "ESX_data"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "Pod-46"
        name                            = "ESX_data_A"
        placement_pci_order             = 3
        placement_slot_id               = "MLOM"
        placement_switch_id             = "A"
      },
      "ESX_data_B" = {
        cdn_source                      = "vnic"
        enable_failover                 = false
        ethernet_adapter_policy         = "VMWare"
        ethernet_network_control_policy = "ESX"
        ethernet_network_group_policy   = "ESX_data_vlanGroup"
        ethernet_qos_policy             = "ESX_data"
        mac_address_allocation_type     = "POOL"
        mac_address_pool                = "Pod-46"
        name                            = "ESX_data_B"
        placement_pci_order             = 4
        placement_slot_id               = "MLOM"
        placement_switch_id             = "B"
      },
    }
  }
}