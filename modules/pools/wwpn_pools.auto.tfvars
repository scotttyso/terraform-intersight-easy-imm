#______________________________________________
#
# Fibre Channel WWPN Pools
#______________________________________________

wwpn_pools = {
  "HBA-A" = {
    assignment_order = "sequential"
    organization     = "Asgard"
    id_blocks = {
      "0" = {
        from = "20:00:00:25:B5:A5:A0:00"
        size = 256
        # to   = "20:00:00:25:B5:A5:A0:FF"
      }
    }
  }
  "HBA-B" = {
    assignment_order = "sequential"
    organization     = "Asgard"
    id_blocks = {
      "0" = {
        from = "20:00:00:25:B5:A5:B0:00"
        size = 256
        # to   = "20:00:00:25:B5:A5:B0:FF"
      }
    }
  }
}
