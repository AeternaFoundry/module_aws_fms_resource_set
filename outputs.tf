output "fms_resource_sets_id" {
  description = "Map of id values across all fms_resource_sets, keyed the same as var.fms_resource_sets"
  value       = { for k, v in aws_fms_resource_set.fms_resource_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fms_resource_sets_arn" {
  description = "Map of arn values across all fms_resource_sets, keyed the same as var.fms_resource_sets"
  value       = { for k, v in aws_fms_resource_set.fms_resource_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "fms_resource_sets_region" {
  description = "Map of region values across all fms_resource_sets, keyed the same as var.fms_resource_sets"
  value       = { for k, v in aws_fms_resource_set.fms_resource_sets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "fms_resource_sets_resource_set" {
  description = "Map of resource_set values across all fms_resource_sets, keyed the same as var.fms_resource_sets"
  value       = { for k, v in aws_fms_resource_set.fms_resource_sets : k => v.resource_set if v.resource_set != null && length(v.resource_set) > 0 }
}
output "fms_resource_sets_tags" {
  description = "Map of tags values across all fms_resource_sets, keyed the same as var.fms_resource_sets"
  value       = { for k, v in aws_fms_resource_set.fms_resource_sets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "fms_resource_sets_tags_all" {
  description = "Map of tags_all values across all fms_resource_sets, keyed the same as var.fms_resource_sets"
  value       = { for k, v in aws_fms_resource_set.fms_resource_sets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

