variable "node_type_lookup" {
  description = <<EOT
Map of node_type_lookup, attributes below
Optional:
    - arm
    - category
    - fleet
    - gb_per_core
    - graviton
    - is_io_cache_enabled
    - local_disk
    - local_disk_min_size
    - min_cores
    - min_gpus
    - min_memory_gb
    - photon_driver_capable
    - photon_worker_capable
    - support_port_forwarding
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    arm                     = optional(bool)
    category                = optional(string)
    fleet                   = optional(bool)
    gb_per_core             = optional(number)
    graviton                = optional(bool)
    is_io_cache_enabled     = optional(bool)
    local_disk              = optional(bool)
    local_disk_min_size     = optional(number)
    min_cores               = optional(number)
    min_gpus                = optional(number)
    min_memory_gb           = optional(number)
    photon_driver_capable   = optional(bool)
    photon_worker_capable   = optional(bool)
    support_port_forwarding = optional(bool)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

