#______________________________________________
#
# MAC Pool Variables
#______________________________________________

mac_pools = {
  "Asgard_Fabric_A" = {
    assignment_order = "sequential"
    organization     = "Asgard"
    mac_blocks = [
      {
        from = "00:25:B5:0a:00:00"
        to   = "00:25:B5:0a:00:ff"
      }
    ]
  }
  "Asgard_Fabric_B" = {
    assignment_order = "sequential"
    organization     = "Asgard"
    mac_blocks = [
      {
        from = "00:25:B5:0b:00:00"
        to   = "00:25:B5:0b:00:ff"
      }
    ]
  }
}
