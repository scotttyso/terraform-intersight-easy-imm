#______________________________________________
#
# UCS Server Profile Template Variables
#______________________________________________

ucs_server_profile_templates = {
  "Asgard_Virtual_Template" = {
    bios_policy                   = "Asgard_Virtualization"
    boot_order_policy             = "Uefi_M2"
    certificate_management_policy = ""
    description                   = "Asgard Virtual Host Template"
    imc_access_policy             = "Asgard_imc_access"
    ipmi_over_lan_policy          = "Asgard_ipmi"
    lan_connectivity_policy       = "Asgard_Virtualization"
    local_user_policy             = "Asgard_local_users"
    organization                  = "Asgard"
    san_connectivity_policy       = "Asgard_Virtualzation"
    sd_card_policy                = ""
    serial_over_lan_policy        = "Asgard_sol"
    snmp_policy                   = "Asgard_snmp"
    storage_policy                = "M2"
    target_platform               = "FIAttached"
    syslog_policy                 = "Asgard_syslog"
    virtual_kvm_policy            = "Asgard_vkvm"
    virtual_media_policy          = ""
    tags                          = []
  }
  "Asgard_Windows_Template" = {
    bios_policy                   = "Asgard_Windows"
    boot_order_policy             = "Uefi_Raid1"
    certificate_management_policy = ""
    description                   = "Asgard Windows Host Template"
    imc_access_policy             = "Asgard_imc_access"
    ipmi_over_lan_policy          = "Asgard_ipmi"
    lan_connectivity_policy       = "Asgard_Windows"
    local_user_policy             = "Asgard_local_users"
    organization                  = "Asgard"
    san_connectivity_policy       = "Asgard_Windows"
    sd_card_policy                = ""
    serial_over_lan_policy        = "Asgard_sol"
    snmp_policy                   = "Asgard_snmp"
    storage_policy                = "Raid1"
    target_platform               = "FIAttached"
    syslog_policy                 = "Asgard_syslog"
    virtual_kvm_policy            = "Asgard_vkvm"
    virtual_media_policy          = ""
    tags                          = []
  }
}
