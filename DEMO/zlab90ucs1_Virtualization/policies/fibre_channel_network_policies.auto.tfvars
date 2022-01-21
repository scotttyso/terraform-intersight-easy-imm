#______________________________________________
#
# Fibre-Channel Network Policy Variables
#______________________________________________

fibre_channel_network_policies = {
  "LAB_VSAN_A_A" = {
    default_vlan_id = 300
    description     = ""
    organization    = "zlab90ucs1_Virtualization"
    vsan_id         = 300
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
  "LAB_VSAN_B_B" = {
    default_vlan_id = 301
    description     = ""
    organization    = "zlab90ucs1_Virtualization"
    vsan_id         = 301
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