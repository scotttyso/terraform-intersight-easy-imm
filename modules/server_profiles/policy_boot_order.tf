
#_________________________________________________________________________
#
# Intersight Boot Order Policies Variables
# GUI Location: Configure > Policies > Create Policy > Boot Order > Start
#_________________________________________________________________________

variable "policy_boot_order" {
  default = {
    default = {
      boot_policy  = "uefi_m2_raid"
      boot_secure  = true
      description  = ""
      organization = "default"
      tags         = []
    }
  }
  description = <<-EOT
  key - Name of the Boot Order Policy.
  1. boot_policy - Name of the Best Practice Boot Order Policy to ASsign.
    a. uefi_m2_pch
    b. uefi_m2_raid
    c. uefi_sdcard
  2. boot_secure - Flag to Enforce Uefi Secure Boot Mode.
  3. description - Description to Assign to the Policy.
  4. organization - Name of the Intersight Organization to assign this Policy to.
    - https://intersight.com/an/settings/organizations/
  5. tags - List of Key/Value Pairs to Assign as Attributes to the Policy.
  EOT
  type = map(object(
    {
      boot_policy  = optional(string)
      boot_secure  = optional(bool)
      description  = optional(string)
      organization = optional(string)
      tags         = optional(list(map(string)))
    }
  ))
}


#_________________________________________________________________________
#
# Boot Order Policies
# GUI Location: Configure > Policies > Create Policy > Boot Order > Start
#_________________________________________________________________________

module "policy_boot_uefi_m2_pch" {
  depends_on = [
    local.org_moids,
    module.ucs_server_profile
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_boot_order"
  for_each = {
    for k, v in local.policy_boot_order : k => v
    if local.policy_boot_order[k].boot_policy == "uefi_m2_pch"
  }
  boot_mode   = "Uefi"
  boot_secure = each.value.boot_secure
  description = each.value.description != "" ? each.value.description : "${each.key} Boot Order Policy."
  name        = each.key
  org_moid    = local.org_moids[each.value.organization].moid
  profiles    = [ for s in sort(keys(local.ucs_server_profiles)) : module.ucs_server_profile[s].moid if local.ucs_server_profiles[s].policy_boot_order == each.key ]
  tags        = each.value.tags != [] ? each.value.tags : local.tags
  boot_devices = [
    {
      additional_properties = jsonencode({ Subtype = "cimc-mapped-dvd" })
      enabled               = true,
      name                  = "CIMC_DVD",
      object_type           = "boot.VirtualMedia",
    },
    {
      additional_properties = jsonencode({ Subtype = "kvm-mapped-dvd" })
      enabled               = true,
      name                  = "KVM_DVD",
      object_type           = "boot.VirtualMedia",
    },
    {
      additional_properties = jsonencode(
        {
          Bootloader = {
            ClassId     = "boot.Bootloader"
            Description = "UEFI Bootloader",
            Name        = "BOOTx64.EFI",
            ObjectType  = "boot.Bootloader"
            Path        = "\\EFI\\BOOT\\"
          },
          Lun = 0

        }
      )
      enabled     = true,
      name        = "M2-PCH",
      object_type = "boot.PchStorage",
    },
  ]
}

module "policy_boot_uefi_m2_raid" {
  depends_on = [
    local.org_moids,
    module.ucs_server_profile
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_boot_order"
  for_each = {
    for k, v in local.policy_boot_order : k => v
    if local.policy_boot_order[k].boot_policy == "uefi_m2_pch"
  }
  boot_mode   = "Uefi"
  boot_secure = each.value.boot_secure
  description = each.value.description != "" ? each.value.description : "${each.key} Boot Order Policy."
  name        = each.key
  org_moid    = local.org_moids[each.value.organization].moid
  profiles    = [ for s in sort(keys(local.ucs_server_profiles)) : module.ucs_server_profile[s].moid if local.ucs_server_profiles[s].policy_boot_order == each.key ]
  tags        = each.value.tags != [] ? each.value.tags : local.tags
  boot_devices = [
    {
      additional_properties = jsonencode({ Subtype = "cimc-mapped-dvd" })
      enabled               = true,
      name                  = "CIMC_DVD",
      object_type           = "boot.VirtualMedia",
    },
    {
      additional_properties = jsonencode({ Subtype = "kvm-mapped-dvd" })
      enabled               = true,
      name                  = "KVM_DVD",
      object_type           = "boot.VirtualMedia",
    },
    {
      additional_properties = jsonencode(
        {
          Bootloader = {
            ClassId     = "boot.Bootloader"
            Description = "UEFI Bootloader",
            Name        = "BOOTx64.EFI",
            ObjectType  = "boot.Bootloader"
            Path        = "\\EFI\\BOOT\\"
          },
          Slot = "MSTOR-RAID"

        }
      )
      enabled     = true,
      name        = "M2_RAID",
      object_type = "boot.LocalDisk",
    },
  ]
}

module "policy_boot_uefi_sdcard" {
  depends_on = [
    local.org_moids,
    module.ucs_server_profile
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_boot_order"
  for_each = {
    for k, v in local.policy_boot_order : k => v
    if local.policy_boot_order[k].boot_policy == "uefi_sdcard"
  }
  boot_mode   = "Uefi"
  boot_secure = each.value.boot_secure
  description = each.value.description != "" ? each.value.description : "${each.key} Boot Order Policy."
  name        = each.key
  org_moid    = local.org_moids[each.value.organization].moid
  profiles    = [ for s in sort(keys(local.ucs_server_profiles)) : module.ucs_server_profile[s].moid if local.ucs_server_profiles[s].policy_boot_order == each.key ]
  tags        = each.value.tags != [] ? each.value.tags : local.tags
  boot_devices = [
    {
      additional_properties = jsonencode({ Subtype = "cimc-mapped-dvd" })
      enabled               = true,
      name                  = "cimc_dvd",
      object_type           = "boot.VirtualMedia",
    },
    {
      additional_properties = jsonencode({ Subtype = "kvm-mapped-dvd" })
      enabled               = true,
      name                  = "kvm_dvd",
      object_type           = "boot.VirtualMedia",
    },
    {
      additional_properties = jsonencode(
        {
          Bootloader = {
            ClassId     = "boot.Bootloader"
            Description = "ESXi Bootloader",
            Name        = "BOOTX64.EFI",
            ObjectType  = "boot.Bootloader"
            Path        = "\\EFI\\BOOT\\"
          }
          Lun     = 0
          Subtype = "none"
        }
      )
      enabled     = true,
      name        = "SdCard",
      object_type = "boot.SdCard",
    },
  ]
}
