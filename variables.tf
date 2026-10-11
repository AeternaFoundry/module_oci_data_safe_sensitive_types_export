variable "data_safe_sensitive_types_exports" {
  description = <<EOT
Map of data_safe_sensitive_types_exports, attributes below
Required:
    - compartment_id
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - is_include_all_sensitive_types
    - sensitive_type_ids_for_export
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                 = string
    defined_tags                   = optional(map(string))
    description                    = optional(string)
    display_name                   = optional(string)
    freeform_tags                  = optional(map(string))
    is_include_all_sensitive_types = optional(bool)
    sensitive_type_ids_for_export  = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

