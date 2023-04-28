output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(sbercloud_evs_snapshot.this[0].id, "")
}