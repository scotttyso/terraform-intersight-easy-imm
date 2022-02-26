#______________________________________________
#
# Power Policy Variables
#______________________________________________

power_policies = {
  "5108" = {
    power_allocation = 0
    description      = "5108 Power Policy."
    power_profiling  = "Enabled"
    power_redunancy  = "Grid"
    power_restore    = "AlwaysOff"
    tags             = []
  }
  "9508" = {
    power_allocation = 0
    description      = "X-Series Power Policy."
    power_profiling  = "Enabled"
    power_redunancy  = "Grid"
    power_restore    = "AlwaysOff"
    tags             = []
  }
  "Server" = {
    power_allocation = 0
    description      = "Server Power Policy"
    power_profiling  = "Enabled"
    power_redunancy  = "Grid"
    power_restore    = "LastState"
    tags             = []
  }
}
