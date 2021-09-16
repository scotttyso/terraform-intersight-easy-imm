#______________________________________________
#
# Local User Policy Variables
#______________________________________________

local_user_policies = {
  "Asgard_local_users" = {
    description              = "Asgard Local User Policy"
    enforce_strong_password  = true
    force_send_password      = false
    grace_period             = 0
    notification_period      = 15
    organization             = "Asgard"
    password_expiry          = false
    password_expiry_duration = 90
    password_history         = 5
    tags                     = []
    users                    = {}
  }
}
