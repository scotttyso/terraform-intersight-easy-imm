#______________________________________________
#
# VSAN Policy Variables
#______________________________________________

vsan_policies = {
  "Asgard_Fabric_A" = {
    description     = "Asgard Fabric A VSAN Policy."
    organization    = "Asgard"
    uplink_trunking = false
    tags            = []
    vsans = {
      100 = {
        fcoe_vlan_id = 100
        vsan_id      = 100
        name         = "Fabric_A"
      },
    }
  }
  "Asgard_Fabric_B" = {
    description     = "Asgard Fabric B VSAN Policy."
    organization    = "Asgard"
    uplink_trunking = false
    tags            = []
    vsans = {
      200 = {
        fcoe_vlan_id = 200
        vsan_id      = 200
        name         = "Fabric_B"
      },
    }
  }
}
