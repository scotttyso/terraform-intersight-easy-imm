#______________________________________________
#
# Thermal Policy Variables
#______________________________________________

thermal_policies = {
  "default" = {
    description      = ""
    fan_control_mode = "Balanced"
    organization     = "zlab90ucs1"
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