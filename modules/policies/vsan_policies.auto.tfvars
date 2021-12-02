#______________________________________________
#
# VSAN Policy Variables
#______________________________________________

vsan_policies = {
  "Richfield_A" = {
    description     = "Richfield Fabric A VSAN Policy."
    organization    = "Asgard"
    uplink_trunking = false
    tags            = []
    vsans = {
      100 = {
        fcoe_vlan_id = 100
        vsan_id      = 100
        name         = "Richfield_A"
      },
    }
  }
  "Richfield_B" = {
    description     = "Richfield Fabric B VSAN Policy."
    organization    = "Asgard"
    uplink_trunking = false
    tags            = []
    vsans = {
      200 = {
        fcoe_vlan_id = 200
        vsan_id      = 200
        name         = "Richfield_B"
      },
    }
  }
}
