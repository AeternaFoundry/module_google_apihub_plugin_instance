output "apihub_plugin_instances_id" {
  description = "Map of id values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no id are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apihub_plugin_instances_actions" {
  description = "Map of actions values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no actions are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "apihub_plugin_instances_auth_config" {
  description = "Map of auth_config values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no auth_config are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => one(v.auth_config) if v.auth_config != null && length(v.auth_config) > 0 }
}
output "apihub_plugin_instances_create_time" {
  description = "Map of create_time values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no create_time are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "apihub_plugin_instances_deletion_policy" {
  description = "Map of deletion_policy values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apihub_plugin_instances_disable" {
  description = "Map of disable values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no disable are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.disable if v.disable != null }
}
output "apihub_plugin_instances_display_name" {
  description = "Map of display_name values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no display_name are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apihub_plugin_instances_error_message" {
  description = "Map of error_message values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no error_message are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.error_message if v.error_message != null && length(v.error_message) > 0 }
}
output "apihub_plugin_instances_location" {
  description = "Map of location values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no location are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.location if v.location != null && length(v.location) > 0 }
}
output "apihub_plugin_instances_name" {
  description = "Map of name values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no name are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apihub_plugin_instances_plugin" {
  description = "Map of plugin values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no plugin are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.plugin if v.plugin != null && length(v.plugin) > 0 }
}
output "apihub_plugin_instances_plugin_instance_id" {
  description = "Map of plugin_instance_id values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no plugin_instance_id are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.plugin_instance_id if v.plugin_instance_id != null && length(v.plugin_instance_id) > 0 }
}
output "apihub_plugin_instances_project" {
  description = "Map of project values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no project are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.project if v.project != null && length(v.project) > 0 }
}
output "apihub_plugin_instances_source_project_id" {
  description = "Map of source_project_id values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no source_project_id are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.source_project_id if v.source_project_id != null && length(v.source_project_id) > 0 }
}
output "apihub_plugin_instances_state" {
  description = "Map of state values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no state are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "apihub_plugin_instances_update_time" {
  description = "Map of update_time values across all apihub_plugin_instances, keyed the same as var.apihub_plugin_instances except keys with no update_time are omitted"
  value       = { for k, v in google_apihub_plugin_instance.apihub_plugin_instances : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

