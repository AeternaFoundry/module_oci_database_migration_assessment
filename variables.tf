variable "database_migration_assessments" {
  description = <<EOT
Map of database_migration_assessments, attributes below
Required:
    - acceptable_downtime
    - compartment_id
    - database_combination
    - database_data_size
    - ddl_expectation
    - network_speed_megabit_per_second
    - source_database_connection (block):
        - id (required)
    - target_database_connection (block):
        - connection_type (optional)
        - database_version (optional)
        - id (optional)
        - technology_sub_type (optional)
        - technology_type (optional)
Optional:
    - bulk_include_exclude_data
    - creation_type
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - migration_scope
    - exclude_objects (block):
        - is_omit_excluded_table_from_replication (optional)
        - object (required)
        - owner (optional)
        - schema (optional)
        - type (optional)
    - include_objects (block):
        - is_omit_excluded_table_from_replication (optional)
        - object (required)
        - owner (optional)
        - schema (optional)
        - type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    acceptable_downtime              = string
    compartment_id                   = string
    database_combination             = string
    database_data_size               = string
    ddl_expectation                  = string
    network_speed_megabit_per_second = string
    bulk_include_exclude_data        = optional(string)
    creation_type                    = optional(string)
    defined_tags                     = optional(map(string))
    description                      = optional(string)
    display_name                     = optional(string)
    freeform_tags                    = optional(map(string))
    migration_scope                  = optional(string)
    source_database_connection = object({
      id = string
    })
    target_database_connection = object({
      connection_type     = optional(string)
      database_version    = optional(string)
      id                  = optional(string)
      technology_sub_type = optional(string)
      technology_type     = optional(string)
    })
    exclude_objects = optional(list(object({
      is_omit_excluded_table_from_replication = optional(bool)
      object                                  = string
      owner                                   = optional(string)
      schema                                  = optional(string)
      type                                    = optional(string)
    })))
    include_objects = optional(list(object({
      is_omit_excluded_table_from_replication = optional(bool)
      object                                  = string
      owner                                   = optional(string)
      schema                                  = optional(string)
      type                                    = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_migration_assessments : (
        contains([for v in ["MYSQL", "ORACLE"] : lower(v)], lower(v.database_combination))
      )
    ])
    error_message = "must be one of: \"MYSQL\", \"ORACLE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.database_migration_assessments : (
        v.migration_scope == null || (contains([for v in ["FULL", "SCHEMA"] : lower(v)], lower(v.migration_scope)))
      )
    ])
    error_message = "must be one of: \"FULL\", \"SCHEMA\""
  }
}

