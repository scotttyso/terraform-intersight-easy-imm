#______________________________________________
#
# NTP Policy Variables
#______________________________________________

ntp_policies = {
  "zlab90ucs1" = {
    description  = ""
    enabled      = true
    organization = "zlab90ucs1"
    timezone     = "America/Chicago"
    ntp_servers = [
      "ntp.deere.com",
    ]
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