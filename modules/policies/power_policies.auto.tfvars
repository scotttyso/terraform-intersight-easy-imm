#______________________________________________
#
# Power Policy Variables
#______________________________________________

power_policies = {
  "Asgard_power_5108" = {
    allocated_budget    = 0
    description         = "Asgard 5108 Power Policy."
    organization        = "Asgard"
    power_profiling     = "Enabled"
    power_restore_state = "AlwaysOff"
    redundancy_mode     = "Grid"
    tags                = []
  }
  "Asgard_power_9508" = {
    allocated_budget    = 0
    description         = "Asgard X-Series Power Policy."
    organization        = "Asgard"
    power_profiling     = "Enabled"
    power_restore_state = "AlwaysOff"
    redundancy_mode     = "Grid"
    tags                = []
  }
  "Asgard_power_server" = {
    allocated_budget    = 0
    description         = "Asgard Server Power Policy"
    organization        = "Asgard"
    power_profiling     = "Enabled"
    power_restore_state = "LastState"
    redundancy_mode     = "Grid"
    tags                = []
  }
}
