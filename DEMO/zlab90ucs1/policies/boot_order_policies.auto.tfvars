#______________________________________________
#
# Boot Order Policy Variables
#______________________________________________

boot_order_policies = {
  "default" = {
    boot_mode          = "Legacy"
    description        = ""
    enable_secure_boot = false
    organization       = "zlab90ucs1"
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
        object_type = "boot.LocalDisk"
        Slot        = ""
      },
      "2_primary" = {
        enabled         = true
        InterfaceName   = "default",
        InterfaceSource = "name",
        IpType          = "None",
        MacAddress      = "",
        object_type     = "boot.Pxe"
        Port            = -1,
        Slot            = ""
      },
      "3" = {
        enabled     = true
        object_type = "boot.LocalCdd"
      },
    }
  }
  "default-UEFI" = {
    boot_mode          = "Uefi"
    description        = ""
    enable_secure_boot = false
    organization       = "zlab90ucs1"
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
        bootloader_description = "UEFI Bootloader",
        bootloader_name        = "BOOTx64.EFI",
        bootloader_path        = "\\EFI\\BOOT\\",
        enabled                = true
        object_type            = "boot.LocalDisk"
        Slot                   = ""
      },
      "2_primary" = {
        enabled         = true
        InterfaceName   = "default",
        InterfaceSource = "name",
        IpType          = "None",
        MacAddress      = "",
        object_type     = "boot.Pxe"
        Port            = -1,
        Slot            = ""
      },
      "3" = {
        enabled     = true
        object_type = "boot.LocalCdd"
      },
    }
  }
  "diag" = {
    boot_mode          = "Legacy"
    description        = ""
    enable_secure_boot = false
    organization       = "zlab90ucs1"
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
        object_type = "boot.LocalCdd"
      },
    }
  }
  "utility" = {
    boot_mode          = "Legacy"
    description        = ""
    enable_secure_boot = false
    organization       = "zlab90ucs1"
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
      "1_primary" = {
        enabled         = true
        InterfaceName   = "default",
        InterfaceSource = "name",
        IpType          = "None",
        MacAddress      = "",
        object_type     = "boot.Pxe"
        Port            = -1,
        Slot            = ""
      },
    }
  }
}