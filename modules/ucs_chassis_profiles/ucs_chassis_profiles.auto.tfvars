#__________________________________________________________
#
# UCS Chassis Profile Variables
#__________________________________________________________

ucs_chassis_profiles = {
  "Asgard_chassis" = {
    action              = "No-op" # Options are {Delete|Deploy|Ready|No-op|Unassign}.
    assign_chassis      = false
    description         = "Asgard Chassis Profile Example."
    imc_access_policy   = "Asgard_imc_access"
    organization        = "Asgard"
    power_policy        = "Asgard_power_9508"
    snmp_policy         = "Asgard_snmp"
    serial_number       = ""
    tags                = []
    target_platform     = "FIAttached"
    thermal_policy      = "Asgard_9508"
    wait_for_completion = false
  }
}

