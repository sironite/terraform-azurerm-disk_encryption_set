resource "azurerm_disk_encryption_set" "this" {
  name                = var.disk_encryption_set_name
  resource_group_name = var.resource_group_name
  location            = var.location
  key_vault_key_id    = var.key_vault_key_id

  auto_key_rotation_enabled = var.auto_key_rotation_enabled
  encryption_type           = var.encryption_type
  federated_client_id       = var.federated_client_id
  identity {
    type         = var.identity_type
    identity_ids = var.identity_ids
  }
}
