#_________________________________________________________________________
#
# Intersight IMC Access Policies Variables
# GUI Location: Configure > Policies > Create Policy > IMC Access > Start
#_________________________________________________________________________

variable "imc_access_policies" {
  default = {
    default = {
      description                = ""
      inband_ip_pool             = ""
      inband_vlan_id             = 4
      ipv4_address_configuration = true
      ipv6_address_configuration = false
      organization               = "default"
      tags                       = []
    }
  }
  description = <<-EOT
  key - Name of the IMC Access Policy
  * description - Description to Assign to the Policy.
  * inband_ip_pool - Name of the IP Pool to Assign to the IMC Access Policy.
  * inband_vlan_id - VLAN ID to Assign as the Inband Management VLAN for IMC Access.
  * ipv4_address_configuration - Flag to Enable or Disable the IPv4 Address Family for Poliices.
  * ipv6_address_configuration - Flag to Enable or Disable the IPv6 Address Family for Poliices.
  * organization - Name of the Intersight Organization to assign this Policy to.
    - https://intersight.com/an/settings/organizations/
  * tags - List of Key/Value Pairs to Assign as Attributes to the Policy.
  EOT
  type = map(object(
    {
      description                = optional(string)
      inband_ip_pool             = optional(string)
      inband_vlan_id             = optional(number)
      ipv4_address_configuration = optional(bool)
      ipv6_address_configuration = optional(bool)
      organization               = optional(string)
      tags                       = optional(list(map(string)))
    }
  ))
}


#_________________________________________________________________________
#
# IMC Access Policies
# GUI Location: Configure > Policies > Create Policy > IMC Access > Start
#_________________________________________________________________________

module "imc_access_policies" {
  depends_on = [
    local.org_moids,
    local.merged_profile_policies,
  ]
  source         = "terraform-cisco-modules/imm/intersight//modules/imc_access_policies"
  for_each       = local.imc_access_policies
  description    = each.value.description != "" ? each.value.description : "${each.key} IMC Access Policy."
  inband_ip_pool = each.value.inband_ip_pool != "" ? local.ip_pools[each.value.inband_ip_pool] : null
  inband_vlan_id = each.value.inband_vlan_id
  enable_ipv4    = each.value.ipv4_address_configuration
  enable_ipv6    = each.value.ipv6_address_configuration
  name           = each.key
  org_moid       = local.org_moids[each.value.organization].moid
  tags           = length(each.value.tags) > 0 ? each.value.tags : local.tags
  profiles = {
    for k, v in local.merged_profile_policies : k => {
      moid        = v.moid
      object_type = v.object_type
    }
    if local.merged_profile_policies[k].imc_access_policy == each.key
  }
}
