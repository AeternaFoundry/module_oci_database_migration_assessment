output "database_migration_assessments_id" {
  description = "Map of id values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no id are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_migration_assessments_acceptable_downtime" {
  description = "Map of acceptable_downtime values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no acceptable_downtime are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.acceptable_downtime if v.acceptable_downtime != null && length(v.acceptable_downtime) > 0 }
}
output "database_migration_assessments_assessment_migration_type" {
  description = "Map of assessment_migration_type values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no assessment_migration_type are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.assessment_migration_type if v.assessment_migration_type != null && length(v.assessment_migration_type) > 0 }
}
output "database_migration_assessments_bulk_include_exclude_data" {
  description = "Map of bulk_include_exclude_data values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no bulk_include_exclude_data are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.bulk_include_exclude_data if v.bulk_include_exclude_data != null && length(v.bulk_include_exclude_data) > 0 }
}
output "database_migration_assessments_compartment_id" {
  description = "Map of compartment_id values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no compartment_id are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_migration_assessments_creation_type" {
  description = "Map of creation_type values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no creation_type are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.creation_type if v.creation_type != null && length(v.creation_type) > 0 }
}
output "database_migration_assessments_database_combination" {
  description = "Map of database_combination values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no database_combination are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.database_combination if v.database_combination != null && length(v.database_combination) > 0 }
}
output "database_migration_assessments_database_data_size" {
  description = "Map of database_data_size values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no database_data_size are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.database_data_size if v.database_data_size != null && length(v.database_data_size) > 0 }
}
output "database_migration_assessments_ddl_expectation" {
  description = "Map of ddl_expectation values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no ddl_expectation are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.ddl_expectation if v.ddl_expectation != null && length(v.ddl_expectation) > 0 }
}
output "database_migration_assessments_defined_tags" {
  description = "Map of defined_tags values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no defined_tags are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "database_migration_assessments_description" {
  description = "Map of description values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no description are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "database_migration_assessments_display_name" {
  description = "Map of display_name values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no display_name are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "database_migration_assessments_exclude_objects" {
  description = "Map of exclude_objects values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no exclude_objects are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.exclude_objects if v.exclude_objects != null && length(v.exclude_objects) > 0 }
}
output "database_migration_assessments_freeform_tags" {
  description = "Map of freeform_tags values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "database_migration_assessments_include_objects" {
  description = "Map of include_objects values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no include_objects are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.include_objects if v.include_objects != null && length(v.include_objects) > 0 }
}
output "database_migration_assessments_is_cdb_supported" {
  description = "Map of is_cdb_supported values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no is_cdb_supported are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.is_cdb_supported if v.is_cdb_supported != null }
}
output "database_migration_assessments_migration_id" {
  description = "Map of migration_id values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no migration_id are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.migration_id if v.migration_id != null && length(v.migration_id) > 0 }
}
output "database_migration_assessments_migration_scope" {
  description = "Map of migration_scope values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no migration_scope are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.migration_scope if v.migration_scope != null && length(v.migration_scope) > 0 }
}
output "database_migration_assessments_network_speed_megabit_per_second" {
  description = "Map of network_speed_megabit_per_second values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no network_speed_megabit_per_second are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.network_speed_megabit_per_second if v.network_speed_megabit_per_second != null && length(v.network_speed_megabit_per_second) > 0 }
}
output "database_migration_assessments_source_database_connection" {
  description = "Map of source_database_connection values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no source_database_connection are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => one(v.source_database_connection) if v.source_database_connection != null && length(v.source_database_connection) > 0 }
}
output "database_migration_assessments_state" {
  description = "Map of state values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no state are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_migration_assessments_system_tags" {
  description = "Map of system_tags values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no system_tags are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "database_migration_assessments_target_database_connection" {
  description = "Map of target_database_connection values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no target_database_connection are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => one(v.target_database_connection) if v.target_database_connection != null && length(v.target_database_connection) > 0 }
}
output "database_migration_assessments_time_created" {
  description = "Map of time_created values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no time_created are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "database_migration_assessments_time_updated" {
  description = "Map of time_updated values across all database_migration_assessments, keyed the same as var.database_migration_assessments except keys with no time_updated are omitted"
  value       = { for k, v in oci_database_migration_assessment.database_migration_assessments : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

