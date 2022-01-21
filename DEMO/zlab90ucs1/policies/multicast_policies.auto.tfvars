#______________________________________________
#
# Multicast Policy Variables
#______________________________________________

multicast_policies = {
  "default" = {
    description             = ""
    organization            = "zlab90ucs1"
    querier_ip_address      = ""
    querier_ip_address_peer = ""
    querier_state           = "Disabled"
    snooping_state          = "Enabled"
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
  }
}