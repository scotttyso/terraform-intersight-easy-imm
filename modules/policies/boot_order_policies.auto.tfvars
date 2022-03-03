#______________________________________________
#
# Boot Order Policy Variables
#______________________________________________

boot_order_policies = {
  "Uefi_AHCI" = {
    boot_mode          = "Uefi"
    enable_secure_boot = false
    description        = "Uefi Secure Boot for AHCI. Quick Test"
    tags               = []
    boot_devices = {
      "KVM" = {
        enabled     = true
        object_type = "boot.VirtualMedia"
        Subtype     = "kvm-mapped-dvd"
      },
      "AHCI" = {
        bootloader_description = "OS"
        bootloader_name        = "BOOTX64.EFI"
        bootloader_path        = "\\EFI\\BOOT\\"
        enabled                = true
        object_type            = "boot.LocalDisk"
        Slot                   = "MSTOR-RAID-1"
      },
    }
  }
  "Uefi_M2" = {
    boot_mode          = "Uefi"
    enable_secure_boot = false
    description        = "Uefi Secure Boot for M2 Drives"
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
  "VMware_Raid1" = {
    boot_mode          = "Uefi"
    enable_secure_boot = false
    description        = "VMware Boot Order for Raid1"
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
      "PXE" = {
        enabled         = true
        InterfaceName   = "MGMT-A"
        InterfaceSource = "name"
        IpType          = "IPv4"
        MacAddress      = ""
        object_type     = "boot.Pxe"
        Port            = -1
        Slot            = "MLOM"
      }
    }
  }
}
