#______________________________________________
#
# Flow Control Policy Variables
#______________________________________________

flow_control_policies = {
  "default" = {
    description  = ""
    organization = "zlab90ucs1"
    priority     = "auto"
    receive      = "Disabled"
    send         = "Disabled"
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