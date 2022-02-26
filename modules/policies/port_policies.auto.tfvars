#______________________________________________
#
# Port Policy Variables
#______________________________________________

port_policies = {
  "asgard-ucs-a" = {
    description             = ""
    device_model            = "UCS-FI-64108"
    port_channel_appliances = {}
    port_channel_ethernet_uplinks = {
      105 = {
        admin_speed                   = "Auto"
        ethernet_network_group_policy = "ACI"
        flow_control_policy           = "flowctrl"
        link_aggregation_policy       = "linkagg"
        link_control_policy           = "linkctrl"
        interfaces = [
          {
            port_id = 105
            slot_id = 1
          },
          {
            port_id = 107
            slot_id = 1
          }
        ]
      }
    }
    port_channel_fc_uplinks = {
      1 = {
        admin_speed  = "32Gbps"
        fill_pattern = "Arbff"
        interfaces = [
          {
            port_id = 1
            slot_id = 1
          },
          {
            port_id = 3
            slot_id = 1
          }
        ]
        vsan_id = 100
      }
    }
    port_channel_fcoe_uplinks = {}
    port_modes = [
      {
        port_list = [1, 4]
        slot_id   = 1
      }
    ]
    port_role_appliances       = {}
    port_role_ethernet_uplinks = {}
    port_role_fc_uplinks       = {}
    port_role_fcoe_uplinks     = {}
    port_role_servers = {
      "0" = {
        port_list = "7-8"
        slot_id   = 1
      }
    }
    tags = []
  }
  "asgard-ucs-b" = {
    description             = ""
    device_model            = "UCS-FI-64108"
    port_channel_appliances = {}
    port_channel_ethernet_uplinks = {
      105 = {
        admin_speed                   = "Auto"
        ethernet_network_group_policy = "ACI"
        flow_control_policy           = "flowctrl"
        link_aggregation_policy       = "linkagg"
        link_control_policy           = "linkctrl"
        interfaces = [
          {
            port_id = 105
            slot_id = 1
          },
          {
            port_id = 107
            slot_id = 1
          }
        ]
      }
    }
    port_channel_fc_uplinks = {
      1 = {
        admin_speed  = "32Gbps"
        fill_pattern = "Arbff"
        interfaces = [
          {
            port_id = 1
            slot_id = 1
          },
          {
            port_id = 3
            slot_id = 1
          }
        ]
        vsan_id = 200
      }
    }
    port_channel_fcoe_uplinks = {}
    port_modes = [
      {
        port_list = [1, 4]
        slot_id   = 1
      }
    ]
    port_role_appliances       = {}
    port_role_ethernet_uplinks = {}
    port_role_fc_uplinks       = {}
    port_role_fcoe_uplinks     = {}
    port_role_servers = {
      "0" = {
        port_list = "7-8"
        slot_id   = 1
      }
    }
    tags = []
  }
}
