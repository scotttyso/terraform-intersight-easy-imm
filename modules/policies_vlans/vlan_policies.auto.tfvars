#______________________________________________
#
# VLAN Policy Variables
#______________________________________________

vlan_policies = {
  "Asgard_vlans" = {
    description  = "Asgard VLAN Policy."
    organization = "Asgard"
    tags         = []
    vlans = {
      "native" = {
        auto_allow_on_uplinks = true
        multicast_policy      = "Asgard_multicast",
        name                  = "Asgard_Prod_Mgmt",
        native_vlan           = false
        vlan_list             = "1101",
      },
      "list_1" = {
        auto_allow_on_uplinks = true
        multicast_policy      = "Asgard_multicast",
        name                  = "Asgard",
        vlan_list             = "1,101-199,201-299,1100,1102-1299,1700-1799",
      },
    }
  }
}
