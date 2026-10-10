variable "fms_resource_sets" {
  description = <<EOT
Map of fms_resource_sets, attributes below
Optional:
    - region
    - tags
    - resource_set (block):
        - description (optional)
        - name (required)
        - resource_set_status (optional)
        - resource_type_list (optional)
        - update_token (optional)
EOT

  type = map(object({
    region = optional(string)
    tags   = optional(map(string))
    resource_set = optional(list(object({
      description         = optional(string)
      name                = string
      resource_set_status = optional(string)
      resource_type_list  = optional(list(string))
      update_token        = optional(string)
    })))
  }))
}

