#_________________________________________________________________________
#
# Intersight Device Connector Policies Variables
# GUI Location: Configure > Policies > Create Policy > Device Connector
#_________________________________________________________________________

variable "device_connector_policies" {
  default = {
    default = {
      description  = ""
      lockout      = false
      organization = "default"
      tags         = []
    }
  }
  description = <<-EOT
  key - Name of the Device Connector Policy.
  * description - Description to Assign to the Policy.
  * lockout - Enables configuration lockout on the endpoint.
  * organization - Name of the Intersight Organization to assign this Policy to.
    - https://intersight.com/an/settings/organizations/
  * tags - List of Key/Value Pairs to Assign as Attributes to the Policy.
  EOT
  type = map(object(
    {
      description  = optional(string)
      lockout      = optional(bool)
      organization = optional(string)
      tags         = optional(list(map(string)))
    }
  ))
}


#_________________________________________________________________________
#
# Device Connector Policies
# GUI Location: Configure > Policies > Create Policy > Device Connector
#_________________________________________________________________________

module "device_connector_policies" {
  depends_on = [
    local.org_moids,
    module.ucs_server_profiles
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/device_connector_policies"
  for_each    = local.device_connector_policies
  description = each.value.description != "" ? each.value.description : "${each.key} Device Connector Policy."
  lockout     = each.value.lockout
  name        = each.key
  org_moid    = local.org_moids[each.value.organization].moid
  tags        = length(each.value.tags) > 0 ? each.value.tags : local.tags
  profiles = [
    for s in sort(keys(local.ucs_server_profiles)) :
    module.ucs_server_profiles[s].moid
    if local.ucs_server_profiles[s].profile.device_connector_policies == each.key
  ]
}
