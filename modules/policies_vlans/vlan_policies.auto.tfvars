#______________________________________________
#
# VLAN Policy Variables
#______________________________________________

vlan_policies = {
  "asgard-ucs" = {
    description  = "VLAN Policy"
    organization = "Asgard"
    tags         = []
    vlans = {
      "Asgard" = {
        auto_allow_on_uplinks = false
        multicast_policy      = "MCAST",
        name                  = "Asgard",
        vlan_list             = "101-199,201-299,1100-1299,1700-1799",
      },
    }
  }
}
