#______________________________________________
#
# UCS Server Profile Template Variables
#______________________________________________

ucs_server_profile_templates = {
  "ESX6_M2" = {
    description     = ""
    organization    = "zlab90ucs1_Virtualization"
    target_platform = "FI-Attached"
    #___________________________
    #
    # Compute Configuration
    #___________________________
    bios_policy          = "ESX"
    boot_order_policy    = "ESX6_M2"
    virtual_media_policy = ""
    #___________________________
    #
    # Management Configuration
    #___________________________
    ipmi_over_lan_policy   = ""
    local_user_policy      = ""
    serial_over_lan_policy = ""
    snmp_policy            = ""
    syslog_policy          = ""
    virtual_kvm_policy     = ""
    #___________________________
    #
    # Storage Configuration
    #___________________________
    sd_card_policy = ""
    storage_policy = "RAID1_M2"
    #___________________________
    #
    # Network Configuration
    #___________________________
    lan_connectivity_policy = "esxLanConPolicy"
    san_connectivity_policy = "ESX6_San_Policy"
    tags = [
      {
        key   = "easyucs_origin",
        value = "convert",
      },
      {
        key   = "easyucs_version",
        value = "0.9.8",
      },
    ]
  }
  "ESX6_SD" = {
    description     = ""
    organization    = "zlab90ucs1_Virtualization"
    target_platform = "FI-Attached"
    #___________________________
    #
    # Compute Configuration
    #___________________________
    bios_policy          = "ESX"
    boot_order_policy    = "ESX_SD"
    virtual_media_policy = ""
    #___________________________
    #
    # Management Configuration
    #___________________________
    ipmi_over_lan_policy   = ""
    local_user_policy      = ""
    serial_over_lan_policy = ""
    snmp_policy            = ""
    syslog_policy          = ""
    virtual_kvm_policy     = ""
    #___________________________
    #
    # Storage Configuration
    #___________________________
    sd_card_policy = ""
    storage_policy = "sdCardRaid1_local_disk"
    #___________________________
    #
    # Network Configuration
    #___________________________
    lan_connectivity_policy = "esxLanConPolicy"
    san_connectivity_policy = "ESX6_San_Policy"
    tags = [
      {
        key   = "easyucs_origin",
        value = "convert",
      },
      {
        key   = "easyucs_version",
        value = "0.9.8",
      },
    ]
  }
}