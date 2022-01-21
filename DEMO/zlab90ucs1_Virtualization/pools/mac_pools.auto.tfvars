#______________________________________________
#
# MAC Pool Variables
#______________________________________________

mac_pools = {
  "Pod-46" = {
    mac_blocks = {
      "1" = {
        from = "00:25:B5:46:00:00"
        size = 1000
        # to   = "00:25:B5:46:03:E7"
      },
    }
    organization = "zlab90ucs1_Virtualization"
    tags = [
      {
        key   = "easyucs_origin"
        value = "convert"
      },
      {
        key   = "easyucs_version"
        value = "0.9.8"
      },
    ]
  }
}