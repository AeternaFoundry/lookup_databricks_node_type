data "databricks_node_type" "node_type_lookup" {
  for_each = var.node_type_lookup

  arm                     = each.value.arm
  category                = each.value.category
  fleet                   = each.value.fleet
  gb_per_core             = each.value.gb_per_core
  graviton                = each.value.graviton
  is_io_cache_enabled     = each.value.is_io_cache_enabled
  local_disk              = each.value.local_disk
  local_disk_min_size     = each.value.local_disk_min_size
  min_cores               = each.value.min_cores
  min_gpus                = each.value.min_gpus
  min_memory_gb           = each.value.min_memory_gb
  photon_driver_capable   = each.value.photon_driver_capable
  photon_worker_capable   = each.value.photon_worker_capable
  support_port_forwarding = each.value.support_port_forwarding

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

