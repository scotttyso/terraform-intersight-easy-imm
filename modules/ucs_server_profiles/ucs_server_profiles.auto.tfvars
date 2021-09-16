#______________________________________________
#
# UCS Server Profiles
#______________________________________________

ucs_server_profiles = {
  "asgard-esxi01" = {
    action                      = "No-op"
    assign_server               = true
    boot_order_policy           = "Uefi_sdcard"
    description                 = "Asgard esxi01 Server Profile."
    organization                = "Asgard"
    serial_number               = "FCH21427BUQ"
    sd_card_policy              = "Asgard_sdcard_m5"
    storage_policy              = ""
    ucs_server_profile_template = "Asgard_Virtual_Template"
    tags                        = []
  }
  "asgard-win01" = {
    action                      = "No-op"
    assign_server               = true
    description                 = "Asgard Windows Server Profile - From Template."
    organization                = "Asgard"
    serial_number               = "FCH21427CHB"
    target_platform             = "FIAttached"
    ucs_server_profile_template = "Asgard_Windows_Template"
    tags                        = []
  }
}
