output "merged_profile_policies" {
  value = local.merged_profile_policies
}

output "data_ucs_server_profiles" {
  value = data.terraform_remote_state.ucs_server_profiles
}
output "ucs_server_profiles" {
  value = local.ucs_server_profiles
}
output "ucs_server_moids" {
  value = local.ucs_server_moids
}
output "ucs_server_policies" {
  value = local.ucs_server_policies
}
