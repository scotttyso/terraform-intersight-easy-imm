#______________________________________________
#
# Storage Policy Variables
#______________________________________________

storage_policies = {
  "RAID1_M2" = {
    description       = ""
    global_hot_spares = ""
    organization      = "zlab90ucs1_Virtualization"
    drive_group       = {}
    m2_configuration = {
      "0" = {
        controller_slot = "MSTOR-RAID-1"
        enable          = true
      }
    }
    single_drive_raid_configuration = {}
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