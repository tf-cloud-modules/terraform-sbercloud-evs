variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "The region in which to create the EVS volume resource."
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "The availability zone for the volume."
  type        = string
}

variable "volume_type" {
  description = "Specifies the disk type."
  type        = string
}

variable "name" {
  description = "Specifies the disk name."
  type        = string
  default     = null
}

variable "size" {
  description = "Specifies the disk size, in GB."
  type        = number
}

variable "description" {
  description = "Specifies the disk description."
  type        = string
  default     = null
}

variable "image_id" {
  description = "The image ID from which to create the volume."
  type        = string
  default     = null
}

variable "backup_id" {
  description = "The backup ID from which to create the volume."
  type        = string
  default     = null
}

variable "snapshot_id" {
  description = "The snapshot ID from which to create the volume."
  type        = string
  default     = null
}

variable "multiattach" {
  description = "Specifies the shared EVS disk information."
  type        = bool
  default     = null
}

variable "kms_id" {
  description = "The Encryption KMS ID to create the volume."
  type        = string
  default     = null
}

variable "device_type" {
  description = "The device type of volume to create. "
  type        = string
  default     = null
}