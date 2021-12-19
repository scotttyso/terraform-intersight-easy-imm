#______________________________________________
#
# BIOS Policy Variables
#______________________________________________

bios_policies = {
  "Linux" = {
    bios_template = "HPC"
    description   = "Linux - Uses the High Performance Computing BIOS Settings"
    organization  = "Asgard"
    tags          = []
  }
  "Virtualization" = {
    bios_template = "Virtualization"
    description   = "Virtualization - BIOS Performance Tuning Guide for Cisco UCS M5 Servers"
    organization  = "Asgard"
    tags          = []
  }
  "Windows" = {
    bios_template = ""
    description   = "Windows - Uses the Default BIOS Settings"
    organization  = "Asgard"
    tags          = []
  }
}
