resource "oci_database_migration_assessment" "database_migration_assessments" {
  for_each = var.database_migration_assessments

  acceptable_downtime              = each.value.acceptable_downtime
  compartment_id                   = each.value.compartment_id
  database_combination             = each.value.database_combination
  database_data_size               = each.value.database_data_size
  ddl_expectation                  = each.value.ddl_expectation
  network_speed_megabit_per_second = each.value.network_speed_megabit_per_second
  bulk_include_exclude_data        = each.value.bulk_include_exclude_data
  creation_type                    = each.value.creation_type
  defined_tags                     = each.value.defined_tags
  description                      = each.value.description
  display_name                     = each.value.display_name
  freeform_tags                    = each.value.freeform_tags
  migration_scope                  = each.value.migration_scope

  source_database_connection {
    id = each.value.source_database_connection.id
  }

  target_database_connection {
    connection_type     = each.value.target_database_connection.connection_type
    database_version    = each.value.target_database_connection.database_version
    id                  = each.value.target_database_connection.id
    technology_sub_type = each.value.target_database_connection.technology_sub_type
    technology_type     = each.value.target_database_connection.technology_type
  }

  dynamic "exclude_objects" {
    for_each = each.value.exclude_objects != null ? each.value.exclude_objects : []
    content {
      is_omit_excluded_table_from_replication = exclude_objects.value.is_omit_excluded_table_from_replication
      object                                  = exclude_objects.value.object
      owner                                   = exclude_objects.value.owner
      schema                                  = exclude_objects.value.schema
      type                                    = exclude_objects.value.type
    }
  }

  dynamic "include_objects" {
    for_each = each.value.include_objects != null ? each.value.include_objects : []
    content {
      is_omit_excluded_table_from_replication = include_objects.value.is_omit_excluded_table_from_replication
      object                                  = include_objects.value.object
      owner                                   = include_objects.value.owner
      schema                                  = include_objects.value.schema
      type                                    = include_objects.value.type
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

