#______________________________________________
#
# Fibre Channel WWNN Pools
#______________________________________________

wwnn_pools = {
  "WWNNs" = {
    assignment_order = "sequential"
    pool_purpose     = "WWNN"
    id_blocks = {
      "0" = {
        from = "20:00:00:25:B5:A5:00:00"
        size = 256
        to   = "20:00:00:25:B5:A5:00:FE"
      }
    }
  }
}
