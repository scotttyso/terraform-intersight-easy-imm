#______________________________________________
#
# Boot Order Policy Variables
#______________________________________________

boot_policies = {
  "Uefi_M2" = {
    boot_mode          = "Uefi"
    enable_secure_boot = false
    description        = "Uefi Secure Boot for M2 Drives"
    organization       = "Asgard"
    tags               = []
    boot_devices = {
      "KVM" = {
        enabled     = true
        object_type = "boot.VirtualMedia"
        Subtype     = "kvm-mapped-dvd"
      },
      "M2" = {
        bootloader_description = "OS"
        bootloader_name        = "BOOTX64.EFI"
        bootloader_path        = "\\EFI\\BOOT\\"
        enabled                = true
        object_type            = "boot.LocalDisk"
        Slot                   = "MSTOR-RAID"
      },
    }
  }
  "Uefi_Raid1" = {
    boot_mode          = "Uefi"
    enable_secure_boot = false
    description        = "Uefi Boot Order for Raid1"
    organization       = "Asgard"
    tags               = []
    boot_devices = {
      "KVM" = {
        enabled     = true
        object_type = "boot.VirtualMedia"
        Subtype     = "kvm-mapped-dvd"
      },
      "Raid1" = {
        bootloader_description = "OS"
        bootloader_name        = "BOOTX64.EFI"
        bootloader_path        = "\\EFI\\BOOT\\"
        enabled                = true
        object_type            = "boot.LocalDisk"
        Slot                   = "MRAID"
      },
    }
  }
  "Uefi_sdcard" = {
    boot_mode          = "Uefi"
    enable_secure_boot = false
    description        = "Uefi Secure Boot for M2 Drives"
    organization       = "Asgard"
    tags               = []
    boot_devices = {
      "KVM" = {
        enabled     = true
        object_type = "boot.VirtualMedia"
        Subtype     = "kvm-mapped-dvd"
      },
      "SDCard" = {
        bootloader_description = "OS"
        bootloader_name        = "BOOTX64.EFI"
        bootloader_path        = "\\EFI\\BOOT\\"
        enabled                = true
        object_type            = "boot.SdCard"
        Lun                    = 0
        Subtype                = "SDCARD"
      },
    }
  }
}
