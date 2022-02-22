#______________________________________________
#
# Virtual Media Policy Variables
#______________________________________________

virtual_media_policies = {
  "vMedia" = {
    description                     = "USB vMedia Policy."
    enable_virtual_media            = true
    enable_low_power_usb            = true
    enable_virtual_media_encryption = false
    organization                    = "Asgard"
    tags                            = []
    vmedia_mappings                 = {}
  }
  "ESXI7" = {
    description                     = "ESXi7 vMedia Policy."
    enable_low_power_usb            = false
    enable_virtual_media_encryption = false
    organization                    = "Asgard"
    tags                            = []
    vmedia_mappings = {
      "ESXI7" = {
        device_type   = "cdd"
        file_location = "http://10.101.128.21/VMware_ESXi_7.0.2_17867351_Custom_Cisco_4.1.3_a.iso"
        protocol      = "http"
      },
    }
  }
}
