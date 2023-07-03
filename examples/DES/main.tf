

module "disk_encryption_set" {
  source  = "sironite/disk_encryption_set/azurerm"
  version = "X.X.X"

  name                      = "my-disk-encryption-set"
  resource_group_name       = "my-resource-group"
  location                  = "westeurope"
  key_vault_key_id          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.KeyVault/vaults/my-key-vault/keys/my-key"
  auto_key_rotation_enabled = true

  identity {
    type = "SystemAssigned"
  }
}

