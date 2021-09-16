#______________________________________________
#
# Port Policy Variables
#______________________________________________

port_policies = {
  "Asgard_Fabric_A" = {
    description  = ""
    device_model = "UCS-FI-64108"
    organization = "Asgard"
    port_channel_appliances = {}
    port_channel_ethernet_uplinks = {
      "97" = {
        admin_speed             = "Auto"
        flow_control_policy     = "Asgard_flowctrl"
        link_aggregation_policy = "Asgard_linkagg"
        link_control_policy     = "Asgard_linkctrl"
      }
    }
    port_channel_fc_uplinks = {}
    port_channel_fcoe_uplinks = {}
    port_modes = [
      {
        port_list = [1, 4]
        slot_id   = 1
      }
    ]
    port_role_appliances = {}
    port_role_ethernet_uplinks = {}
    port_role_fc_uplinks = {}
    port_role_fcoe_uplinks = {}
    port_role_servers = {
      "0" = {
        port_list = "5-18"
        slot_id   = 1
      }
    }
    tags = []
  }
  "Asgard_Fabric_B" = {
    description  = ""
    device_model = "UCS-FI-64108"
    organization = "Asgard"
    port_channel_appliances = {}
    port_channel_ethernet_uplinks = {
      "97" = {
        admin_speed             = "Auto"
        flow_control_policy     = "Asgard_flowctrl"
        link_aggregation_policy = "Asgard_linkagg"
        link_control_policy     = "Asgard_linkctrl"
      }
    }
    port_channel_fc_uplinks = {}
    port_channel_fcoe_uplinks = {}
    port_modes = [
      {
        port_list = [1, 4]
        slot_id   = 1
      }
    ]
    port_role_appliances = {}
    port_role_ethernet_uplinks = {}
    port_role_fc_uplinks = {}
    port_role_fcoe_uplinks = {}
    port_role_servers = {
      "0" = {
        port_list = "5-18"
        slot_id   = 1
      }
    }
    tags = []
  }
}
