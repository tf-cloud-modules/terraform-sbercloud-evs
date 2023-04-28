variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "The region in which to create the evs snapshot resource."
  type        = string
  default     = null
}

variable "volume_id" {
  description = "The id of the snapshot's source disk."
  type        = string
}

variable "name" {
  description = "The name of the snapshot."
  type        = string
}

variable "description" {
  description = "The description of the snapshot."
  type        = string
  default     = null
}

variable "force" {
  description = "Specifies the flag for forcibly creating a snapshot."
  type        = bool
  default     = null
}