#_________________________________________________________________________
#
# Intersight VSAN Policies Variables
# GUI Location: Configure > Policies > Create Policy > VSAN
#_________________________________________________________________________

variable "vlan_policies" {
  default = {
    default = {
      description  = ""
      organization = "default"
      tags         = []
      vlans = {
        default = {
          auto_allow_on_uplinks = false
          multicast_policy      = ""
          name                  = "vlan-{vlan_id}"
          native_vlan           = false
          vlan_list             = ""
        }
      }
    }
  }
  description = <<-EOT
  key - Name of the VLAN Policy.
  * description - Description to Assign to the Policy.
  * organization - Name of the Intersight Organization to assign this Policy to.
    - https://intersight.com/an/settings/organizations/
  * tags - List of Key/Value Pairs to Assign as Attributes to the Policy.
  * vlans - List of VSANs to add to the VSAN Policy.
    - auto_allow_on_uplinks - Default is false.  Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI.
    - multicast_policy - Name of the Multicast Policy to assign to the VLAN.
    - name - The 'name' used to identify this VLAN.  When configuring a single VLAN this will be used as the Name.  When configuring multiple VLANs in a list the name will be used as a Name Prefix.
    - native_vlan - Default is false.  Used to define whether this VLAN is to be classified as 'native' for traffic in this FI.
    - vlan_list - (REQUIRED).  The identifier for this Virtual LAN.  This can either be one vlan like "10" or a list of VLANs: "1,10,20-30".
  EOT
  type = map(object(
    {
      description  = optional(string)
      organization = optional(string)
      tags         = optional(list(map(string)))
      vlans = optional(map(object(
        {
          auto_allow_on_uplinks = optional(bool)
          multicast_policy      = string
          name                  = optional(string)
          native_vlan           = optional(bool)
          vlan_list             = string
        }
      )))
    }
  ))
}


#_________________________________________________________________________
#
# VLAN Policies
# GUI Location: Configure > Policies > Create Policy > VLAN
#_________________________________________________________________________


resource "intersight_fabric_eth_network_policy" "vlan_policies" {
  depends_on = [
    local.org_moids,
    local.ucs_domain_policies
  ]
  for_each    = var.vlan_policies
  description = each.value.description != "" ? each.value.description : "${each.key} VLAN Policy"
  name        = each.key
  organization {
    moid        = local.org_moids[each.value.organization].moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = { for k, v in local.ucs_domain_policies : k => v if local.ucs_domain_policies[k].vlan_policy == each.key }
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
    }
  }
  dynamic "tags" {
    for_each = length(each.value.tags) > 0 ? each.value.tags : local.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}

#______________________________________________
#
# Assign VLANs to VLAN Policies
#______________________________________________

module "vlan_policies_add_vlans" {
  depends_on = [
    local.org_moids,
    intersight_fabric_multicast_policy.multicast_policies,
    intersight_fabric_eth_network_policy.vlan_policies
  ]
  version               = ">=0.9.6"
  source                = "terraform-cisco-modules/imm/intersight//modules/vlan_policy_add_vlan_list"
  for_each              = local.vlans
  auto_allow_on_uplinks = each.value.auto_allow_on_uplinks
  multicast_policy_moid = intersight_fabric_multicast_policy.multicast_policies[
    each.value.multicast_policy
  ].moid
  name        = each.value.name != "" ? each.value.name : "VLAN"
  native_vlan = each.value.native_vlan
  vlan_list   = each.value.vlan_list
  vlan_policy_moid = intersight_fabric_eth_network_policy.vlan_policies[
    each.value.vlan_policy
  ].moid
}
