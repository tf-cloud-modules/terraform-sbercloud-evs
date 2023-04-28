output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(sbercloud_evs_volume.this[0].id, "")
}