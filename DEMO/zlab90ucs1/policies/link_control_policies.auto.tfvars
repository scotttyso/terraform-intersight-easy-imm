#______________________________________________
#
# Link Control Policy Variables
#______________________________________________

link_control_policies = {
  "default" = {
    admin_state  = "Disabled"
    description  = ""
    mode         = "normal"
    organization = "zlab90ucs1"
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