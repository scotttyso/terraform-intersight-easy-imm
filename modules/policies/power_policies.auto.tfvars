#______________________________________________
#
# Power Policy Variables
#______________________________________________

power_policies = {
  "5108" = {
    allocated_budget    = 0
    description         = "5108 Power Policy."
    organization        = "Asgard"
    power_profiling     = "Enabled"
    power_restore_state = "AlwaysOff"
    redundancy_mode     = "Grid"
    tags                = []
  }
  "9508" = {
    allocated_budget    = 0
    description         = "X-Series Power Policy."
    organization        = "Asgard"
    power_profiling     = "Enabled"
    power_restore_state = "AlwaysOff"
    redundancy_mode     = "Grid"
    tags                = []
  }
  "Server" = {
    allocated_budget    = 0
    description         = "Server Power Policy"
    organization        = "Asgard"
    power_profiling     = "Enabled"
    power_restore_state = "LastState"
    redundancy_mode     = "Grid"
    tags                = []
  }
}
