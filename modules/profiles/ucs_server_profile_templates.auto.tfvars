#______________________________________________
#
# UCS Server Profile Template Variables
#______________________________________________

ucs_server_profile_templates = {
  "Linux_Template" = {
    bios_policy                   = "Linux"
    boot_order_policy             = "Uefi_Raid1"
    certificate_management_policy = ""
    description                   = "Linux Host Template"
    device_connector_policy       = ""
    imc_access_policy             = "Asgard"
    ipmi_over_lan_policy          = "Richfield"
    lan_connectivity_policy       = "Linux"
    local_user_policy             = "Richfield"
    san_connectivity_policy       = "Linux"
    sd_card_policy                = ""
    serial_over_lan_policy        = "Richfield"
    snmp_policy                   = "Asgard"
    storage_policy                = "Raid1"
    target_platform               = "FIAttached"
    syslog_policy                 = "Richfield"
    virtual_kvm_policy            = "Richfield"
    virtual_media_policy          = ""
    tags                          = []
  }
  "Virtualization_Template" = {
    bios_policy                   = "Virtualization"
    boot_order_policy             = "VMware_Raid1"
    certificate_management_policy = ""
    description                   = "Virtualization Host Template"
    imc_access_policy             = "Asgard"
    ipmi_over_lan_policy          = "Richfield"
    lan_connectivity_policy       = "Virtualization"
    local_user_policy             = "Richfield"
    san_connectivity_policy       = "Virtualization"
    sd_card_policy                = ""
    serial_over_lan_policy        = "Richfield"
    snmp_policy                   = "Asgard"
    storage_policy                = "M2"
    target_platform               = "FIAttached"
    syslog_policy                 = "Richfield"
    virtual_kvm_policy            = "Richfield"
    virtual_media_policy          = ""
    tags                          = []
  }
  "Windows_Template" = {
    bios_policy                   = "Windows"
    boot_order_policy             = "Uefi_Raid1"
    certificate_management_policy = ""
    description                   = "Windows Host Template"
    imc_access_policy             = "Asgard"
    ipmi_over_lan_policy          = "Richfield"
    lan_connectivity_policy       = "Windows"
    local_user_policy             = "Richfield"
    san_connectivity_policy       = "Windows"
    sd_card_policy                = ""
    serial_over_lan_policy        = "Richfield"
    snmp_policy                   = "Asgard"
    storage_policy                = "Raid1"
    target_platform               = "FIAttached"
    syslog_policy                 = "Richfield"
    virtual_kvm_policy            = "Richfield"
    virtual_media_policy          = ""
    tags                          = []
  }
}
