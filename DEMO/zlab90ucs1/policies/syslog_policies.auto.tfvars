#______________________________________________
#
# Syslog Policy Variables
#______________________________________________

syslog_policies = {
  "zlab90ucs1" = {
    description        = ""
    local_min_severity = "critical"
    organization       = "zlab90ucs1"
    remote_clients = [
      {
        enabled      = false
        hostname     = "0.0.0.0"
        min_severity = "warning"
        port         = 514
        protocol     = "udp"
      },
      {
        enabled      = false
        hostname     = "0.0.0.0"
        min_severity = "warning"
        port         = 514
        protocol     = "udp"
      }
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