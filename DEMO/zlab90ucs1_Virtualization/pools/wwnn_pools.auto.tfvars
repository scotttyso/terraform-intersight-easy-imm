#______________________________________________
#
# Fibre-Channel WWNN Pool Variables
#______________________________________________

wwnn_pools = {
  "WWNN_Pod-46" = {
    id_blocks = {
      "1" = {
        from = "20:00:00:25:B5:46:00:00"
        size = 1000
        # to   = "20:00:00:25:B5:46:03:E7"
      },
    }
    organization = "zlab90ucs1_Virtualization"
    pool_purpose = "WWNN"
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