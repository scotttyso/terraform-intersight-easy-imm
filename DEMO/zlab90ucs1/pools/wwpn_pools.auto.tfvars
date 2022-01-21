#______________________________________________
#
# Fibre-Channel WWPN Pool Variables
#______________________________________________

wwpn_pools = {
  "WWPN_Pod-46-A" = {
    id_blocks = {
      "1" = {
        from = "20:00:00:25:B5:46:A0:00"
        size = 1000
        # to   = "20:00:00:25:B5:46:A3:E7"
      },
    }
    organization = "zlab90ucs1"
    pool_purpose = "WWPN"
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
  "WWPN_Pod-46-B" = {
    id_blocks = {
      "1" = {
        from = "20:00:00:25:B5:46:B0:00"
        size = 1000
        # to   = "20:00:00:25:B5:46:B3:E7"
      },
    }
    organization = "zlab90ucs1"
    pool_purpose = "WWPN"
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