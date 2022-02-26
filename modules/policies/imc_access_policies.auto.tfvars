#______________________________________________
#
# IMC Access Policies
#______________________________________________

imc_access_policies = {
  "Asgard" = {
    description                = "Asgard IMC Access Policy"
    inband_ip_pool             = "IMC_pool"
    inband_vlan_id             = 1101
    ipv4_address_configuration = true
    ipv6_address_configuration = false
    tags                       = []
  }
}
