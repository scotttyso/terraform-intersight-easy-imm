#__________________________________________________________
#
# UCS Chassis Profile Variables
#__________________________________________________________

ucs_chassis_profiles = {
  "asgard-ucs-1" = {
    action              = "No-op" # Options are {Delete|Deploy|Ready|No-op|Unassign}.
    assign_chassis      = true
    description         = "asgard-ucs-1 Chassis Profile"
    imc_access_policy   = "Asgard"
    organization        = "Asgard"
    power_policy        = "5108"
    snmp_policy         = "Asgard"
    serial_number       = "FOX2308P6M7"
    tags                = []
    target_platform     = "FIAttached"
    thermal_policy      = "5108"
    wait_for_completion = false
  }
}
