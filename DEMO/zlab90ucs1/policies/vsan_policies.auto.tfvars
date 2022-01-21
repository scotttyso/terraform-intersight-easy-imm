#______________________________________________
#
# VSAN Policy Variables
#______________________________________________

vsan_policies = {
  "zlab90ucs1-A" = {
    description     = ""
    organization    = "zlab90ucs1"
    uplink_trunking = false
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
    vsans = {
      "1" = {
        fcoe_vlan_id   = 4048
        vsan_id        = 1
        name           = "default"
        default_zoning = "Disabled"
      },
      "2" = {
        fcoe_vlan_id   = 300
        vsan_id        = 300
        name           = "LAB_VSAN_A"
        default_zoning = "Disabled"
      },
    }
  }
  "zlab90ucs1-B" = {
    description     = ""
    organization    = "zlab90ucs1"
    uplink_trunking = false
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
    vsans = {
      "1" = {
        fcoe_vlan_id   = 4048
        vsan_id        = 1
        name           = "default"
        default_zoning = "Disabled"
      },
      "2" = {
        fcoe_vlan_id   = 301
        vsan_id        = 301
        name           = "LAB_VSAN_B"
        default_zoning = "Disabled"
      },
    }
  }
}