terraform {
  experiments = [module_variable_optional_attrs]
}

#__________________________________________________________
#
# Terraform Cloud Organization
#__________________________________________________________

variable "tfc_organization" {
  description = "Terraform Cloud Organization."
  type        = string
}


#______________________________________________
#
# Terraform Cloud domain_workspace Workspace
#______________________________________________

variable "ws_pools" {
  description = "Pools Workspace Name."
  type        = string
}

variable "ws_ucs_chassis_profiles" {
  description = "UCS Chassis Profiles Workspace Name."
  type        = string
}

variable "ws_ucs_domain_profiles" {
  description = "UCS Domain Profiles Workspace Name."
  type        = string
}

variable "ws_ucs_server_profiles" {
  description = "UCS Server Profiles Workspace Name."
  type        = string
}


#__________________________________________________________
#
# Intersight Provider Variables
#__________________________________________________________

variable "apikey" {
  description = "Intersight API Key."
  sensitive   = true
  type        = string
}

variable "endpoint" {
  default     = "https://intersight.com"
  description = "Intersight URL."
  type        = string
}

variable "secretkey" {
  description = "Intersight Secret Key."
  sensitive   = true
  type        = string
}


#__________________________________________________________
#
# Global Variables
#__________________________________________________________

variable "assign_profiles_to_templates" {
  default     = false
  description = "Flag to associate disable assigning UCS Server Profiles to Templates until Policies are assigned to Templates."
  type        = bool
}

variable "organizations" {
  default     = ["default"]
  description = "Intersight Organization Names."
  type        = set(string)
}

variable "tags" {
  default     = []
  description = "List of Key/Value Pairs to Assign as Attributes to the Policy."
  type        = list(map(string))
}
