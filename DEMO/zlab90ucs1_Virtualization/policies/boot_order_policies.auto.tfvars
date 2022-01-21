#______________________________________________
#
# Boot Order Policy Variables
#______________________________________________

boot_order_policies = {
  "ESX6_M2" = {
    boot_mode          = "Uefi"
    description        = ""
    enable_secure_boot = false
    organization       = "zlab90ucs1_Virtualization"
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
    boot_devices = {
      "1" = {
        enabled     = true
        object_type = "boot.VirtualMedia"
        Subtype     = "cimc-mapped-dvd"
      },
      "2" = {
        enabled     = true
        object_type = "boot.LocalCdd"
      },
      "3" = {
        bootloader_description = "UEFI Bootloader",
        bootloader_name        = "BOOTx64.EFI",
        bootloader_path        = "\\EFI\\BOOT\\",
        enabled                = true
        Lun                    = 0
        object_type            = "boot.PchStorage"
      },
    }
  }
  "ESX_SD" = {
    boot_mode          = "Legacy"
    description        = ""
    enable_secure_boot = false
    organization       = "zlab90ucs1_Virtualization"
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
    boot_devices = {
      "1" = {
        enabled     = true
        object_type = "boot.VirtualMedia"
        Subtype     = "cimc-mapped-dvd"
      },
      "2" = {
        enabled     = true
        object_type = "boot.LocalCdd"
      },
      "3" = {
        enabled     = true
        Lun         = 0,
        object_type = "boot.SdCard"
        Subtype     = ""
      },
    }
  }
}