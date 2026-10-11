resource "oci_data_safe_sensitive_types_export" "data_safe_sensitive_types_exports" {
  for_each = var.data_safe_sensitive_types_exports

  compartment_id                 = each.value.compartment_id
  defined_tags                   = each.value.defined_tags
  description                    = each.value.description
  display_name                   = each.value.display_name
  freeform_tags                  = each.value.freeform_tags
  is_include_all_sensitive_types = each.value.is_include_all_sensitive_types
  sensitive_type_ids_for_export  = each.value.sensitive_type_ids_for_export

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

