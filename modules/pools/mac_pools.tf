
#______________________________________________
#
# MAC Pool Variables
#______________________________________________

variable "mac_pools" {
  default = {
    default = { # The Pool Name will be {each.key}.  In this case it would be default if left like this.
      assignment_order = "default"
      description      = ""
      organization     = "default"
      tags             = []
      mac_blocks = [
        {
          from = "00:25:B5:0a:00:00"
          to   = "00:25:B5:0a:00:ff"
        }
      ]
    }
  }
  description = <<-EOT
  key - Name of the MAC Pool.
  * Assignment order decides the order in which the next identifier is allocated.
    - default - (Default) Assignment order is decided by the system.
    - sequential - Identifiers are assigned in a sequential order.
  * description - Description to Assign to the Pool.
  * mac_blocks - Map of Addresses to Assign to the Pool.
    - from - staring MAC Address.  Default is "00:25:B5:0a:00:00".
    - to - ending MAC Address.  Default is "00:25:B5:0a:00:ff".
  * organization - Name of the Intersight Organization to assign this pool to.  Default is default.
    - https://intersight.com/an/settings/organizations/
  * tags - List of Key/Value Pairs to Assign as Attributes to the Pool.
  EOT
  type = map(object(
    {
      assignment_order = optional(string)
      description      = optional(string)
      mac_blocks       = optional(list(map(string)))
      organization     = optional(string)
      tags             = optional(list(map(string)))
    }
  ))
}


#____________________________________________________________
#
# Intersight Pools Module
# GUI Location: Pools > Create Pool
#____________________________________________________________

#______________________________________________
#
# MAC Pools
#______________________________________________

module "mac_pools" {
  depends_on = [
    local.org_moids
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/mac_pools"
  for_each         = local.mac_pools
  assignment_order = each.value.assignment_order
  description      = each.value.description != "" ? each.value.description : "${each.value.organization} ${each.key} MAC Pool."
  mac_blocks       = each.value.mac_blocks
  name             = each.key
  org_moid         = local.org_moids[each.value.organization].moid
  tags             = each.value.tags != [] ? each.value.tags : local.tags
}
