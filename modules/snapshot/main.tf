resource "sbercloud_evs_snapshot" "this" {
  count = var.create ? 1 : 0

  region      = var.region
  volume_id   = var.volume_id
  name        = var.name
  description = var.description
  force       = var.force
}