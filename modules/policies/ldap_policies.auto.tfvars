ldap_policies = {
  "Asgard_ldap" = {
    base_settings = {
      base_dn = "dc=rich,dc=ciscolabs,dc=com"
      domain  = "rich.ciscolabs.com"
      timeout = 0
    }
    binding_parameters = {}
    # binding_parameters = {
    #   bind_dn     = ""
    #   bind_method = "LoginCredentials"
    # }
    description = "Asgard LDAP Policy"
    # enable_encryption = false
    # enable_group_authorization = false
    # enable_ldap = true
    ldap_from_dns = {}
    # ldap_from_dns = {
    #   enable = false
    #   search_domain = "value"
    #   search_forest = "value"
    #   source = "value"
    # }
    ldap_groups = {
      "Lab Admins" = {
        role = "admin"
      }
    }
    ldap_servers = {
      "ad1.rich.ciscolabs.com" = {
        port = 389
      }
      "ad2.rich.ciscolabs.com" = {
        port = 389
      }
    }
    # nested_group_search_depth = 128
    organization      = "Asgard"
    search_parameters = {}
    # search_parameters = {
    #   attribute = "value"
    #   filter = "value"
    #   group_attribute = "value"
    # }
    tags = []
    # user_search_precedence = "LocalUserDb"
  }
}
