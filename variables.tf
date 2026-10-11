variable "apihub_plugin_instances" {
  description = <<EOT
Map of apihub_plugin_instances, attributes below
Required:
    - display_name
    - location
    - plugin
    - plugin_instance_id
Optional:
    - deletion_policy
    - disable
    - project
    - source_project_id
    - actions (block):
        - action_id (required)
        - curation_config (optional, block):
            - curation_type (optional)
            - custom_curation (optional, block):
                - curation (required)
        - schedule_cron_expression (optional)
        - schedule_time_zone (optional)
    - auth_config (block):
        - api_key_config (optional, block):
            - api_key (required, block):
                - secret_version (required)
            - http_element_location (required)
            - name (required)
        - auth_type (required)
        - google_service_account_config (optional, block):
            - service_account (required)
        - oauth2_client_credentials_config (optional, block):
            - client_id (required)
            - client_secret (required, block):
                - secret_version (required)
        - user_password_config (optional, block):
            - password (required, block):
                - secret_version (required)
            - username (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name       = string
    location           = string
    plugin             = string
    plugin_instance_id = string
    deletion_policy    = optional(string)
    disable            = optional(bool)
    project            = optional(string)
    source_project_id  = optional(string)
    actions = optional(list(object({
      action_id = string
      curation_config = optional(object({
        curation_type = optional(string)
        custom_curation = optional(object({
          curation = string
        }))
      }))
      schedule_cron_expression = optional(string)
      schedule_time_zone       = optional(string)
    })))
    auth_config = optional(object({
      api_key_config = optional(object({
        api_key = object({
          secret_version = string
        })
        http_element_location = string
        name                  = string
      }))
      auth_type = string
      google_service_account_config = optional(object({
        service_account = string
      }))
      oauth2_client_credentials_config = optional(object({
        client_id = string
        client_secret = object({
          secret_version = string
        })
      }))
      user_password_config = optional(object({
        password = object({
          secret_version = string
        })
        username = string
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

