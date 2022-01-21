#______________________________________________
#
# Ethernet Network Group Policy Variables
#______________________________________________

ethernet_network_group_policies = {
  "ESX_data_vlanGroup" = {
    allowed_vlans = "3,21,110,112,114,119,122,123,124,149,730,733,734,735,736,737,738,739,740,758,765,1554,1570,741,742,750,751,754,756,760,898,767,769,770,771,753,755"
    description   = ""
    organization  = "zlab90ucs1_Virtualization"
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
  "ESX_storage_vlanGroup" = {
    allowed_vlans = "305"
    description   = ""
    organization  = "zlab90ucs1_Virtualization"
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