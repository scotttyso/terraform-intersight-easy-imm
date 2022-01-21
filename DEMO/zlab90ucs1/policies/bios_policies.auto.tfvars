#______________________________________________
#
# BIOS Policy Variables
#______________________________________________

bios_policies = {
  "SRIOV" = {
    bios_template = ""
    description   = "Recommended bios settings for SRIOV vNICs"
    organization  = "zlab90ucs1"
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
    cbs_cmn_gnb_nb_iommu            = "enabled",
    direct_cache_access             = "enabled",
    intel_virtualization_technology = "enabled",
    intel_vt_for_directed_io        = "enabled",
    intel_vtd_coherency_support     = "disabled",
    intel_vtd_interrupt_remapping   = "enabled",
    svm_mode                        = "enabled",
  }
  "usNIC" = {
    bios_template = ""
    description   = "Recommended bios settings for usNIC vNICs"
    organization  = "zlab90ucs1"
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
    direct_cache_access             = "enabled",
    enhanced_intel_speed_step_tech  = "enabled",
    execute_disable_bit             = "disabled",
    intel_hyper_threading_tech      = "disabled",
    intel_turbo_boost_tech          = "enabled",
    intel_virtualization_technology = "enabled",
    intel_vt_for_directed_io        = "enabled",
    intel_vtd_coherency_support     = "enabled",
    intel_vtdats_support            = "enabled",
    lv_ddr_mode                     = "performance-mode",
    memory_mapped_io_above4gb       = "disabled",
    numa_optimized                  = "enabled",
    processor_c1e                   = "disabled",
    processor_c6report              = "disabled",
    select_memory_ras_configuration = "maximum-performance",
  }
}