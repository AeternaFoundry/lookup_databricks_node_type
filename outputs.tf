output "node_type_lookup_id" {
  description = "Map of id values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "node_type_lookup_arm" {
  description = "Map of arm values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no arm are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.arm if v.arm != null }
}
output "node_type_lookup_category" {
  description = "Map of category values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no category are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.category if v.category != null && length(v.category) > 0 }
}
output "node_type_lookup_fleet" {
  description = "Map of fleet values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no fleet are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.fleet if v.fleet != null }
}
output "node_type_lookup_gb_per_core" {
  description = "Map of gb_per_core values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no gb_per_core are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.gb_per_core if v.gb_per_core != null }
}
output "node_type_lookup_graviton" {
  description = "Map of graviton values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no graviton are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.graviton if v.graviton != null }
}
output "node_type_lookup_is_io_cache_enabled" {
  description = "Map of is_io_cache_enabled values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no is_io_cache_enabled are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.is_io_cache_enabled if v.is_io_cache_enabled != null }
}
output "node_type_lookup_local_disk" {
  description = "Map of local_disk values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no local_disk are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.local_disk if v.local_disk != null }
}
output "node_type_lookup_local_disk_min_size" {
  description = "Map of local_disk_min_size values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no local_disk_min_size are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.local_disk_min_size if v.local_disk_min_size != null }
}
output "node_type_lookup_min_cores" {
  description = "Map of min_cores values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no min_cores are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.min_cores if v.min_cores != null }
}
output "node_type_lookup_min_gpus" {
  description = "Map of min_gpus values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no min_gpus are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.min_gpus if v.min_gpus != null }
}
output "node_type_lookup_min_memory_gb" {
  description = "Map of min_memory_gb values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no min_memory_gb are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.min_memory_gb if v.min_memory_gb != null }
}
output "node_type_lookup_photon_driver_capable" {
  description = "Map of photon_driver_capable values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no photon_driver_capable are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.photon_driver_capable if v.photon_driver_capable != null }
}
output "node_type_lookup_photon_worker_capable" {
  description = "Map of photon_worker_capable values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no photon_worker_capable are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.photon_worker_capable if v.photon_worker_capable != null }
}
output "node_type_lookup_provider_config" {
  description = "Map of provider_config values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "node_type_lookup_support_port_forwarding" {
  description = "Map of support_port_forwarding values across all node_type_lookup, keyed the same as var.node_type_lookup except keys with no support_port_forwarding are omitted"
  value       = { for k, v in data.databricks_node_type.node_type_lookup : k => v.support_port_forwarding if v.support_port_forwarding != null }
}

