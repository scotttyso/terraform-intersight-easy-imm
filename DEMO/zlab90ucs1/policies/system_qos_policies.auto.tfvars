#______________________________________________
#
# System QoS Policy Variables
#______________________________________________

system_qos_policies = {
  "zlab90ucs1" = {
    classes = {
      "Bronze" = {
        bandwidth_percent  = 14
        cos                = 1
        mtu                = 1500
        multicast_optimize = false
        packet_drop        = true
        state              = "Enabled"
        weight             = 5
      },
      "Gold" = {
        bandwidth_percent  = 25
        cos                = 4
        mtu                = 9216
        multicast_optimize = false
        packet_drop        = true
        state              = "Enabled"
        weight             = 9
      },
      "Platinum" = {
        bandwidth_percent  = 0
        cos                = 5
        mtu                = 1500
        multicast_optimize = false
        packet_drop        = false
        state              = "Disabled"
        weight             = 10
      },
      "Silver" = {
        bandwidth_percent  = 14
        cos                = 2
        mtu                = 1500
        multicast_optimize = false
        packet_drop        = true
        state              = "Enabled"
        weight             = 5
      },
      "FC" = {
        bandwidth_percent  = 25
        cos                = 3
        mtu                = 2240
        multicast_optimize = false
        packet_drop        = false
        state              = "Enabled"
        weight             = 9
      },
      "Best Effort" = {
        bandwidth_percent  = 20
        cos                = 255
        mtu                = 9216
        multicast_optimize = false
        packet_drop        = true
        state              = "Enabled"
        weight             = 7
      },
    }
    description  = ""
    organization = "zlab90ucs1"
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