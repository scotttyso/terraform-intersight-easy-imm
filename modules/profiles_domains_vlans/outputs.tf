#__________________________________________________________
#
# Multicast Policy Outputs
#__________________________________________________________

output "policies_multicast" {
  value = {
    for v in sort(keys(module.policies_multicast)) : v => module.policies_multicast[v].moid
    if v != null
  }
}


#__________________________________________________________
#
# VLAN Policy Outputs
#__________________________________________________________

output "policies_vlan" {
  value = {
    for v in sort(keys(module.policies_vlan)) : v => module.policies_vlan[v].moid
    if v != null
  }
}


#__________________________________________________________
#
# VLAN Outputs
#__________________________________________________________

output "policies_vlan_native" {
  value = {
    for v in sort(keys(module.policies_vlan_native)) : v => {
      moid = module.policies_vlan_native[v].vlan.moid
      name = module.policies_vlan_native[v].vlan.name
    } if local.policies_vlan[v].vlan_native != null
  }
}

output "policies_vlan_list" {
  value = {
    for v in sort(keys(module.policies_vlan_list)) : v =>
    module.policies_vlan_list[v].vlan
    if local.policies_vlan[v].vlan_list != ""
  }
}

output "policies_vlan_map" {
  value = {
    for v in sort(keys(module.policies_vlan_map)) : v =>
    module.policies_vlan_map[v].vlan
    if length(local.policies_vlan[v].vlan_map) > 0
  }
}
