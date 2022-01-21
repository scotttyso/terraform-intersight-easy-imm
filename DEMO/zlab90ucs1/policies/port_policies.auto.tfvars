#______________________________________________
#
# Port Policy Variables
#______________________________________________

port_policies = {
  "zlab90ucs1-A" = {
    description             = ""
    device_model            = "UCS-FI-6454"
    organization            = "zlab90ucs1"
    port_channel_appliances = {}
    port_channel_ethernet_uplinks = {
      "1" = {
        admin_speed                   = "10Gbps"
        ethernet_network_group_policy = "ESX_data_vlanGroup"
        flow_control_policy           = "default"
        interfaces = [
          {
            port_id = 2
            slot_id = 1
          },
          {
            port_id = 3
            slot_id = 1
          },
        ]
        link_aggregation_policy = "default"
        link_control_policy     = "default"
      }
    }
    port_channel_fc_uplinks   = {}
    port_channel_fcoe_uplinks = {}
    port_modes                = []
    port_role_appliances      = {}
    port_role_ethernet_uplinks = {
      "1" = {
        admin_speed                   = "10Gbps"
        ethernet_network_group_policy = "ESX_storage_vlanGroup"
        fec                           = "Auto"
        flow_control_policy           = "default"
        link_control_policy           = "default"
        port_list                     = "4"
        slot_id                       = 1
      }
    }
    port_role_fc_storage   = {}
    port_role_fc_uplinks   = {}
    port_role_fcoe_uplinks = {}
    port_role_servers      = {}
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
  }
  "zlab90ucs1-B" = {
    description             = ""
    device_model            = "UCS-FI-6454"
    organization            = "zlab90ucs1"
    port_channel_appliances = {}
    port_channel_ethernet_uplinks = {
      "2" = {
        admin_speed                   = "10Gbps"
        ethernet_network_group_policy = "ESX_data_vlanGroup"
        flow_control_policy           = "default"
        interfaces = [
          {
            port_id = 2
            slot_id = 1
          },
          {
            port_id = 3
            slot_id = 1
          },
        ]
        link_aggregation_policy = "default"
        link_control_policy     = "default"
      }
    }
    port_channel_fc_uplinks   = {}
    port_channel_fcoe_uplinks = {}
    port_modes                = []
    port_role_appliances      = {}
    port_role_ethernet_uplinks = {
      "1" = {
        admin_speed                   = "10Gbps"
        ethernet_network_group_policy = "ESX_storage_vlanGroup"
        fec                           = "Auto"
        flow_control_policy           = "default"
        link_control_policy           = "default"
        port_list                     = "4"
        slot_id                       = 1
      }
    }
    port_role_fc_storage   = {}
    port_role_fc_uplinks   = {}
    port_role_fcoe_uplinks = {}
    port_role_servers      = {}
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
  }
}