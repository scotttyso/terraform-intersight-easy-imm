#______________________________________________
#
# SNMP Policy Variables
#______________________________________________

snmp_policies = {
  "zlab90ucs1" = {
    description           = ""
    enable_snmp           = false
    organization          = "zlab90ucs1"
    snmp_community_access = ""
    snmp_engine_input_id  = ""
    snmp_port             = 161
    system_contact        = "Jim Hagerty"
    system_location       = ""
    tags = [
      {
        key   = "easyucs_origin",
        value = "convert",
      },
      {
        key   = "easyucs_version",
        value = "0.9.8",
      },
    ]
    snmp_trap_destinations = {}
    snmp_users             = {}
  }
}