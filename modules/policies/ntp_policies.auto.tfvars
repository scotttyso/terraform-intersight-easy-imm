#______________________________________________
#
# NTP Policy Variables
#______________________________________________

ntp_policies = {
  "Asgard_ntp" = {
    description  = "Asgard NTP Policy."
    enabled      = true
    organization = "Asgard"
    tags         = []
    timezone     = "America/New_York"
    # Supported Timezone List - https://github.com/terraform-cisco-modules/terraform-intersight-imm/tree/master/modules/ntp_policies
    ntp_servers = [
      "10.101.128.15",
      "10.101.128.16"
    ]
  }
}
