#______________________________________________
#
# Switch Control Policy Variables
#______________________________________________

switch_control_policies = {
  "zlab90ucs1" = {
    description                  = ""
    ethernet_switching_mode      = "end-host"
    fc_switching_mode            = "end-host"
    mac_address_table_aging      = "Default"
    mac_aging_time               = 14500
    organization                 = "zlab90ucs1"
    udld_message_interval        = 15
    udld_recovery_action         = "reset"
    vlan_port_count_optimization = false
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