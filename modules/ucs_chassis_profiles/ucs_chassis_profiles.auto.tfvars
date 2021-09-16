#__________________________________________________________
#
# UCS Chassis Profile Variables
#__________________________________________________________

ucs_chassis_profiles = {
  "asgard-chassis-1" = {
    action              = "No-op" # Options are {Delete|Deploy|Ready|No-op|Unassign}.
    assign_chassis      = true
    description         = "Asgard Chassis Profile Example."
    imc_access_policy   = "Asgard_imc_access"
    organization        = "Asgard"
    power_policy        = "Asgard_power_5108"
    snmp_policy         = "Asgard_snmp"
    serial_number       = ""
    tags                = []
    target_platform     = "FIAttached"
    thermal_policy      = "Asgard_5108"
    wait_for_completion = false
  }
}

