resource "sbercloud_evs_volume" "this" {
  count = var.create ? 1 : 0

  region            = var.region
  availability_zone = var.availability_zone
  volume_type       = var.volume_type
  name              = var.name
  size              = var.size
  description       = var.description
  image_id          = var.image_id
  backup_id         = var.backup_id
  snapshot_id       = var.snapshot_id
  multiattach       = var.multiattach
  kms_id            = var.kms_id
  device_type       = var.device_type
}