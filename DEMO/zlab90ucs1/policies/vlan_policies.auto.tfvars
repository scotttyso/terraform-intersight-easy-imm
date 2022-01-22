#______________________________________________
#
# VLAN Policy Variables
#______________________________________________

vlan_policies = {
  "zlab90ucs1" = {
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
    vlans = {
      "1" = {
        auto_allow_on_uplinks = true
        vlan_list             = "1",
        multicast_policy      = "default",
        name                  = "default",
        native_vlan           = true
      },
      "2" = {
        auto_allow_on_uplinks = false
        vlan_list             = "3",
        multicast_policy      = "default",
        name                  = "ESX_vlan3",
        native_vlan           = false
      },
      "3" = {
        auto_allow_on_uplinks = false
        vlan_list             = "21",
        multicast_policy      = "default",
        name                  = "ESX_vlan21",
        native_vlan           = false
      },
      "4" = {
        auto_allow_on_uplinks = false
        vlan_list             = "110",
        multicast_policy      = "default",
        name                  = "ESX_vlan110",
        native_vlan           = false
      },
      "5" = {
        auto_allow_on_uplinks = false
        vlan_list             = "112",
        multicast_policy      = "default",
        name                  = "ESX_vlan112",
        native_vlan           = false
      },
      "6" = {
        auto_allow_on_uplinks = false
        vlan_list             = "114",
        multicast_policy      = "default",
        name                  = "ESX_vlan114",
        native_vlan           = false
      },
      "7" = {
        auto_allow_on_uplinks = false
        vlan_list             = "119",
        multicast_policy      = "default",
        name                  = "ESX_vlan119",
        native_vlan           = false
      },
      "8" = {
        auto_allow_on_uplinks = false
        vlan_list             = "122",
        multicast_policy      = "default",
        name                  = "ESX_vlan122",
        native_vlan           = false
      },
      "9" = {
        auto_allow_on_uplinks = false
        vlan_list             = "123",
        multicast_policy      = "default",
        name                  = "ESX_vlan123",
        native_vlan           = false
      },
      "10" = {
        auto_allow_on_uplinks = false
        vlan_list             = "124",
        multicast_policy      = "default",
        name                  = "ESX_vlan124",
        native_vlan           = false
      },
      "11" = {
        auto_allow_on_uplinks = false
        vlan_list             = "149",
        multicast_policy      = "default",
        name                  = "ESX_vlan149",
        native_vlan           = false
      },
      "12" = {
        auto_allow_on_uplinks = false
        vlan_list             = "305",
        multicast_policy      = "default",
        name                  = "ESX_vlan305",
        native_vlan           = false
      },
      "13" = {
        auto_allow_on_uplinks = false
        vlan_list             = "730",
        multicast_policy      = "default",
        name                  = "ESX_vlan730",
        native_vlan           = false
      },
      "14" = {
        auto_allow_on_uplinks = false
        vlan_list             = "733",
        multicast_policy      = "default",
        name                  = "ESX_vlan733",
        native_vlan           = false
      },
      "15" = {
        auto_allow_on_uplinks = false
        vlan_list             = "734",
        multicast_policy      = "default",
        name                  = "ESX_vlan734",
        native_vlan           = false
      },
      "16" = {
        auto_allow_on_uplinks = false
        vlan_list             = "735",
        multicast_policy      = "default",
        name                  = "ESX_vlan735",
        native_vlan           = false
      },
      "17" = {
        auto_allow_on_uplinks = false
        vlan_list             = "736",
        multicast_policy      = "default",
        name                  = "ESX_vlan736",
        native_vlan           = false
      },
      "18" = {
        auto_allow_on_uplinks = false
        vlan_list             = "737",
        multicast_policy      = "default",
        name                  = "ESX_vlan737",
        native_vlan           = false
      },
      "19" = {
        auto_allow_on_uplinks = false
        vlan_list             = "738",
        multicast_policy      = "default",
        name                  = "ESX_vlan738",
        native_vlan           = false
      },
      "20" = {
        auto_allow_on_uplinks = false
        vlan_list             = "739",
        multicast_policy      = "default",
        name                  = "ESX_vlan739",
        native_vlan           = false
      },
      "21" = {
        auto_allow_on_uplinks = false
        vlan_list             = "740",
        multicast_policy      = "default",
        name                  = "ESX_vlan740",
        native_vlan           = false
      },
      "22" = {
        auto_allow_on_uplinks = false
        vlan_list             = "741",
        multicast_policy      = "default",
        name                  = "ESX_vlans741",
        native_vlan           = false
      },
      "23" = {
        auto_allow_on_uplinks = false
        vlan_list             = "742",
        multicast_policy      = "default",
        name                  = "ESX_vlans742",
        native_vlan           = false
      },
      "24" = {
        auto_allow_on_uplinks = false
        vlan_list             = "750",
        multicast_policy      = "default",
        name                  = "ESX_vlans750",
        native_vlan           = false
      },
      "25" = {
        auto_allow_on_uplinks = false
        vlan_list             = "751",
        multicast_policy      = "default",
        name                  = "ESX_vlans751",
        native_vlan           = false
      },
      "26" = {
        auto_allow_on_uplinks = false
        vlan_list             = "753",
        multicast_policy      = "default",
        name                  = "LabVlan753",
        native_vlan           = false
      },
      "27" = {
        auto_allow_on_uplinks = false
        vlan_list             = "754",
        multicast_policy      = "default",
        name                  = "ESX_vlans754",
        native_vlan           = false
      },
      "28" = {
        auto_allow_on_uplinks = false
        vlan_list             = "755",
        multicast_policy      = "default",
        name                  = "LabVlan755",
        native_vlan           = false
      },
      "29" = {
        auto_allow_on_uplinks = false
        vlan_list             = "756",
        multicast_policy      = "default",
        name                  = "ESX_vlans756",
        native_vlan           = false
      },
      "30" = {
        auto_allow_on_uplinks = false
        vlan_list             = "758",
        multicast_policy      = "default",
        name                  = "ESX_vlan758",
        native_vlan           = false
      },
      "31" = {
        auto_allow_on_uplinks = false
        vlan_list             = "760",
        multicast_policy      = "default",
        name                  = "ESX_vlans760",
        native_vlan           = false
      },
      "32" = {
        auto_allow_on_uplinks = false
        vlan_list             = "765",
        multicast_policy      = "default",
        name                  = "ESX_vlan765",
        native_vlan           = false
      },
      "33" = {
        auto_allow_on_uplinks = false
        vlan_list             = "767",
        multicast_policy      = "default",
        name                  = "idealab2_767",
        native_vlan           = false
      },
      "34" = {
        auto_allow_on_uplinks = false
        vlan_list             = "769",
        multicast_policy      = "default",
        name                  = "idealab2_769",
        native_vlan           = false
      },
      "35" = {
        auto_allow_on_uplinks = false
        vlan_list             = "770",
        multicast_policy      = "default",
        name                  = "idealab2_770",
        native_vlan           = false
      },
      "36" = {
        auto_allow_on_uplinks = false
        vlan_list             = "771",
        multicast_policy      = "default",
        name                  = "idealab2_771",
        native_vlan           = false
      },
      "37" = {
        auto_allow_on_uplinks = false
        vlan_list             = "898",
        multicast_policy      = "default",
        name                  = "ESX_vlans898",
        native_vlan           = false
      },
      "38" = {
        auto_allow_on_uplinks = false
        vlan_list             = "1554",
        multicast_policy      = "default",
        name                  = "ESX_vlan1554",
        native_vlan           = false
      },
      "39" = {
        auto_allow_on_uplinks = false
        vlan_list             = "1570",
        multicast_policy      = "default",
        name                  = "ESX_vlan1570",
        native_vlan           = false
      },
    }
  }
}