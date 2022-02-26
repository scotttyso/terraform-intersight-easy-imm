#______________________________________________
#
# SNMP Policies
#______________________________________________

snmp_policies = {
  "Asgard" = {
    description            = "Asgard SNMP Policy"
    enable_snmp            = true
    snmp_community_access  = "Full"
    snmp_engine_input_id   = ""
    snmp_port              = 161
    system_contact         = "rich-lab@cisco.com"
    system_location        = "Richfield Lab Room 143 Rack D"
    snmp_trap_destinations = {}
    snmp_users             = {}
    tags                   = []
  }
  "Asgard_domain" = {
    description           = "Asgard SNMP Policy"
    enable_snmp           = true
    snmp_community_access = "Full"
    snmp_engine_input_id  = ""
    snmp_port             = 161
    system_contact        = "rich-lab@cisco.com"
    system_location       = "Richfield Lab Room 143 Rack D"
    snmp_users = {
      "cisco_snmp" = {
        auth_password    = 1
        auth_type        = "SHA"
        privacy_password = 1
        privacy_type     = "AES"
        security_level   = "AuthPriv"
      }
    }
    snmp_trap_destinations = {
      "10.128.101.24" = {
        enable    = true
        trap_type = "Trap"
        user      = "cisco_snmp"
      }
      "10.128.101.25" = {
        enable    = true
        trap_type = "Trap"
        user      = "cisco_snmp"
      }
    }
    tags = []
  }
}
