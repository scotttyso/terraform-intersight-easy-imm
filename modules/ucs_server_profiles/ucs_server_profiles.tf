#_________________________________________________________________________
#
# Intersight UCS Server Profile Variables
# GUI Location: Profiles > UCS Server Profile > Create UCS Server Profile
#_________________________________________________________________________

variable "ucs_server_profiles" {
  default = {
    default = {
      action                        = "No-op"
      adapter_policy                = ""
      assign_server                 = false
      bios_policy                   = ""
      boot_order_policy             = ""
      certificate_management_policy = ""
      description                   = ""
      device_connector_policy       = ""
      imc_access_policy             = ""
      ipmi_over_lan_policy          = ""
      lan_connectivity_policy       = ""
      ldap_policy                   = ""
      local_user_policy             = ""
      network_connectivity_policy   = ""
      ntp_policy                    = ""
      organization                  = "default"
      persistent_memory_policy      = ""
      power_policy                  = ""
      san_connectivity_policy       = ""
      sd_card_policy                = ""
      serial_number                 = ""
      serial_over_lan_policy        = ""
      smtp_policy                   = ""
      snmp_policy                   = ""
      snmp_1_user_policy            = ""
      snmp_2_users_policy           = ""
      ssh_policy                    = ""
      storage_policy                = ""
      syslog_policy                 = ""
      tags                          = []
      target_platform               = "FIAttached"
      ucs_server_profile_template   = ""
      virtual_kvm_policy            = ""
      virtual_media_policy          = ""
      wait_for_completion           = false
    }
  }
  description = <<-EOT
  key - Name of the UCS Server Profile
  * action - Action to Perform on the Chassis Profile Assignment.  Options are:
    - Deploy
    - No-op
    - Unassign
  * adapter_policy - Name of the Adapter Configuration Policy to assign to the Profile.
  * assign_server - Flag to determine if a physical server should be assigned to the server profile or not.  Default is false.
  * bios_policy - Name of the BIOS Policy to assign to the Profile.
  * boot_order_policy - Name of the Boot Order Policy to assign to the Profile.
  * certificate_management_policy - Name of the Certificate Management Policy to assign to the Profile.
  * description - Description to Assign to the Profile.
  * device_connector_policy - Name of the Device Connector Policy to assign to the Profile.
  * imc_access_policy - Name of the IMC Access Policy to assign to the Profile.
  * ipmi_over_lan_policy - Name of the IPMI over LAN Policy to assign to the Profile.
  * lan_connectivity_policy - Name of the LAN Connectivity Policy to assign to the Profile.
  * ldap_policy - Name of the LDAP Policy to assign to the Profile.
  * local_user_policy - Name of the Local Users Policy to assign to the Profile.
  * network_connectivity_policy - Name of the Network Connectivity Policy to assign to the Profile.
  * ntp_policy - Name of the NTP Policy to assign to the Profile.
  * organization - Name of the Intersight Organization to assign this Profile to.  Default is default.
    -  https://intersight.com/an/settings/organizations/
  * persistent_memory_policy - Name of the Persistent Memory Policy to assign to the Profile.
  * power_policy - Name of the Power Policy to assign to the Profile.
  * san_connectivity_policy - Name of the SAN Connectivity Policy to assign to the Profile.
  * sd_card_policy - Name of the SD Card Policy to assign to the Profile.
  * serial_number - Serial Number of the Physical Server.
  * serial_over_lan_policy - Name of the Serial over LAN Policy to assign to the Profile.
  * smtp_policy - Name of the SMTP Policy to assign to the Profile.
  * snmp_policy - Name of the SNMP Policy to assign to the Profile.
  * snmp_1_user_policy - Name of the SNMP single user Policy to assign to the Profile.
  * snmp_2_users_policy - Name of the SNMP two user Policy to assign to the Profile.
  * ssh_policy - Name of the SSH Policy to assign to the Profile.
  * storage_policy - Name of the Storage Policy to assign to the Profile.
  * syslog_policy - Name of the Syslog Policy to assign to the Profile.
  * tags - List of Key/Value Pairs to Assign as Attributes to the Policy.
  * target_platform - The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight.
    - FIAttached - (Default) - Servers which are connected to a Fabric Interconnect that is managed by Intersight.
    - Standalone - Servers which are operating in standalone mode i.e. not connected to a Fabric Interconnected.
  * ucs_server_profile_template - Name of the server template to apply to the server profile.
  * virtual_kvm_policy - Name of the Virtual KVM Policy to assign to the Profile.
  * virtual_media_policy - Name of the Virtual Media Policy to assign to the Profile.
  * wait_for_completion - This model object can trigger workflows. Use this option to wait for all running workflows to reach a complete state.
  EOT
  type = map(object(
    {
      action                        = optional(string)
      adapter_policy                = optional(string)
      assign_server                 = optional(bool)
      bios_policy                   = optional(string)
      boot_order_policy             = optional(string)
      certificate_management_policy = optional(string)
      description                   = optional(string)
      device_connector_policy       = optional(string)
      imc_access_policy             = optional(string)
      ipmi_over_lan_policy          = optional(string)
      lan_connectivity_policy       = optional(string)
      ldap_policy                   = optional(string)
      local_user_policy             = optional(string)
      network_connectivity_policy   = optional(string)
      ntp_policy                    = optional(string)
      operating_system              = optional(string)
      organization                  = optional(string)
      persistent_memory_policy      = optional(string)
      power_policy                  = optional(string)
      san_connectivity_policy       = optional(string)
      sd_card_policy                = optional(string)
      serial_number                 = optional(string)
      serial_over_lan_policy        = optional(string)
      smtp_policy                   = optional(string)
      snmp_policy                   = optional(string)
      snmp_1_user_policy            = optional(string)
      snmp_2_users_policy           = optional(string)
      ssh_policy                    = optional(string)
      storage_policy                = optional(string)
      syslog_policy                 = optional(string)
      tags                          = optional(list(map(string)))
      target_platform               = optional(string)
      virtual_kvm_policy            = optional(string)
      virtual_media_policy          = optional(string)
      ucs_server_profile_template   = optional(string)
      wait_for_completion           = optional(bool)
    }
  ))
}


#_________________________________________________________________________
#
# Intersight UCS Server Profile Module
# GUI Location: Profiles > UCS Server Profile > Create UCS Server Profile
#_________________________________________________________________________

module "ucs_server_profiles" {
  depends_on = [
    local.org_moids,
    # module.ucs_server_profile_templates
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/ucs_server_profiles"
  for_each            = local.ucs_server_profiles
  action              = each.value.action
  description         = each.value.description != "" ? each.value.description : "${each.key} Server Profile."
  name                = each.key
  org_moid            = local.org_moids[each.value.organization].moid
  tags                = length(each.value.tags) > 0 ? each.value.tags : local.tags
  target_platform     = each.value.target_platform == "Standalone" ? "Standalone" : "FIAttached"
  wait_for_completion = each.value.wait_for_completion
  # src_template        = each.value.ucs_server_profile_template != "" && var.assign_profiles_to_templates == true ? [module.ucs_server_profile_templates[each.value.ucs_server_profile_template].moid] : []
  assigned_server = each.value.assign_server == true ? [
    {
      moid        = data.intersight_compute_physical_summary.server[each.key].results[0].moid
      object_type = data.intersight_compute_physical_summary.server[each.key].results[0].source_object_type
    }
  ] : []
}
