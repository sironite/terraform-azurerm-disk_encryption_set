variable "disk_encryption_set_name" {
  type        = string
  description = "Name of the disk encryption set."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group."
}

variable "location" {
  type        = string
  description = "Location of the resource group."
}

variable "key_vault_key_id" {
  type        = string
  description = "ID of the key vault key."
}

variable "auto_key_rotation_enabled" {
  type        = bool
  description = "Whether to enable auto key rotation."
  default     = true
}

variable "encryption_type" {
  type        = string
  description = "Type of encryption."
  default     = "EncryptionAtRestWithCustomerKey"
}

variable "federated_client_id" {
  type        = string
  description = "ID of the federated client."
  default     = null
}

variable "identity_type" {
  type        = string
  description = "Type of identity."
  default     = "SystemAssigned"
}

variable "identity_ids" {
  type        = list(string)
  description = "List of identity IDs."
  default     = []
}