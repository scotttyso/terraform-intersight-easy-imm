#______________________________________________
#
# UCS Server Profiles
#______________________________________________

ucs_server_profiles = {
  "asgard-esxi01" = {
    action                      = "No-op"
    description                 = "asgard-esxi01.rich.ciscolabs.com"
    serial_number               = "FCH213271VU"
    server_assignment_mode      = "Static"
    storage_policy              = "Raid1"
    ucs_server_profile_template = "Virtualization_Template"
    tags                        = []
  }
  "asgard-esxi02" = {
    action                      = "No-op"
    description                 = "asgard-esxi02.rich.ciscolabs.com"
    serial_number               = "FCH21427JDU"
    server_assignment_mode      = "Static"
    storage_policy              = "Raid1"
    ucs_server_profile_template = "Virtualization_Template"
    tags                        = []
  }
  "asgard-lnx01" = {
    action                      = "No-op"
    description                 = "asgard-lnx01.rich.ciscolabs.com"
    serial_number               = "FCH21427BUQ"
    server_assignment_mode      = "Static"
    ucs_server_profile_template = "Linux_Template"
    tags                        = []
  }
  "asgard-win01" = {
    action                      = "No-op"
    description                 = "asgard-win01.rich.ciscolabs.com"
    serial_number               = ""
    server_assignment_mode      = "None"
    ucs_server_profile_template = "Windows_Template"
    tags                        = []
  }
}
