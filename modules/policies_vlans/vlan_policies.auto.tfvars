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
        name                  = "default",
        native_vlan           = true
        vlan_list             = "1",
      },
      "list_1" = {
        auto_allow_on_uplinks = true
        multicast_policy      = "Asgard_multicast",
        name                  = "Asgard",
        vlan_list             = "101-199,201-299,1100-1299,1700-1799",
      },
    }
  }
}
