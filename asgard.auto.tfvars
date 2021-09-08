#__________________________________________________________
#
# Variables for Terraform Cloud
#__________________________________________________________

# agent_pool        = "Richfield_Agents"
# tfc_email         = "tyscott@cisco.com"
terraform_version = "1.0.3"
tfc_organization  = "Cisco-Richfield-Lab"
vcs_repo          = "scotttyso/terraform-intersight-easy-imm"

#__________________________________________________________
#
# Workspaces to Create
#__________________________________________________________

workspaces = {
  "Asgard_pools" = {
    auto_apply        = true
    description       = "Pools for the Asgard Organization."
    working_directory = "modules/pools"
    workspace_type    = "pool"
  }
  "Asgard_ucs_profiles" = {
    auto_apply        = true
    description       = "Asgard UCS Profiles."
    working_directory = "modules/ucs_profiles"
    workspace_type    = "profiles"
  }
  "Asgard_domain_vlans" = {
    auto_apply        = true
    description       = "Asgard UCS Domain VLANs."
    working_directory = "modules/ucs_domain_profiles_vlans"
    workspace_type    = "vlan"
  }
}
