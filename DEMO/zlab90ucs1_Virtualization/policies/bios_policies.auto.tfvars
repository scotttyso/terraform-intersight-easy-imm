#______________________________________________
#
# BIOS Policy Variables
#______________________________________________

bios_policies = {
  "ESX" = {
    bios_template = ""
    description   = "bios settings for ESX"
    organization  = "zlab90ucs1_Virtualization"
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
    # BIOS Customization Settings
    core_multi_processing           = "all",
    cpu_performance                 = "enterprise",
    intel_virtualization_technology = "enabled",
    intel_vt_for_directed_io        = "enabled",
    lv_ddr_mode                     = "performance-mode",
    numa_optimized                  = "enabled",
  }
}