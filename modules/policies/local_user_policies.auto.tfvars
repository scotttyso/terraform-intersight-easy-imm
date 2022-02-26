#______________________________________________
#
# Local User Policy Variables
#______________________________________________

local_user_policies = {
  "Richfield" = {
    always_send_user_password = false
    description               = "Richfield Local User Policy"
    enable_password_expiry    = false
    enforce_strong_password   = true
    grace_period              = 0
    notification_period       = 15
    password_expiry_duration  = 90
    password_history          = 5
    tags                      = []
    users = {
      "admin" = {
        enabled  = true
        password = 1
        role     = "admin"
      }
    }
  }
}
