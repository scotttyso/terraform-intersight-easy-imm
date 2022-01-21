#______________________________________________
#
# SD Card Policy Variables
#______________________________________________

sd_card_policies = {
  "sdCardRaid1" = {
    description  = ""
    enable_os    = true
    organization = "zlab90ucs1_Virtualization"
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