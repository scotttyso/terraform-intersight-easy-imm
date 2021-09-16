#______________________________________________
#
# Fibre Channel WWNN Pools
#______________________________________________

wwnn_pools = {
  "Asgard_WWNN" = {
    assignment_order = "sequential"
    organization     = "Asgard"
    pool_purpose     = "WWNN"
    id_blocks = [
      {
        from = "20:00:00:25:B5:00:00:00"
        to   = "20:00:00:25:B5:00:00:ff"
      }
    ]
  }
}
