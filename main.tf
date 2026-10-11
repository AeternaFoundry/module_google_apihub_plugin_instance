resource "google_apihub_plugin_instance" "apihub_plugin_instances" {
  for_each = var.apihub_plugin_instances

  display_name       = each.value.display_name
  location           = each.value.location
  plugin             = each.value.plugin
  plugin_instance_id = each.value.plugin_instance_id
  deletion_policy    = each.value.deletion_policy
  disable            = each.value.disable
  project            = each.value.project
  source_project_id  = each.value.source_project_id

  dynamic "actions" {
    for_each = each.value.actions != null ? each.value.actions : []
    content {
      action_id = actions.value.action_id
      dynamic "curation_config" {
        for_each = actions.value.curation_config != null ? [actions.value.curation_config] : []
        content {
          curation_type = curation_config.value.curation_type
          dynamic "custom_curation" {
            for_each = curation_config.value.custom_curation != null ? [curation_config.value.custom_curation] : []
            content {
              curation = custom_curation.value.curation
            }
          }
        }
      }
      schedule_cron_expression = actions.value.schedule_cron_expression
      schedule_time_zone       = actions.value.schedule_time_zone
    }
  }

  dynamic "auth_config" {
    for_each = each.value.auth_config != null ? [each.value.auth_config] : []
    content {
      dynamic "api_key_config" {
        for_each = auth_config.value.api_key_config != null ? [auth_config.value.api_key_config] : []
        content {
          api_key {
            secret_version = api_key_config.value.api_key.secret_version
          }
          http_element_location = api_key_config.value.http_element_location
          name                  = api_key_config.value.name
        }
      }
      auth_type = auth_config.value.auth_type
      dynamic "google_service_account_config" {
        for_each = auth_config.value.google_service_account_config != null ? [auth_config.value.google_service_account_config] : []
        content {
          service_account = google_service_account_config.value.service_account
        }
      }
      dynamic "oauth2_client_credentials_config" {
        for_each = auth_config.value.oauth2_client_credentials_config != null ? [auth_config.value.oauth2_client_credentials_config] : []
        content {
          client_id = oauth2_client_credentials_config.value.client_id
          client_secret {
            secret_version = oauth2_client_credentials_config.value.client_secret.secret_version
          }
        }
      }
      dynamic "user_password_config" {
        for_each = auth_config.value.user_password_config != null ? [auth_config.value.user_password_config] : []
        content {
          password {
            secret_version = user_password_config.value.password.secret_version
          }
          username = user_password_config.value.username
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

