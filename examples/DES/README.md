# Terraform module | AzureRM - Disk Encryption Set

This Terraform module is designed to create a Disk Encryption Set for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`Disk Encryption Set`

```hcl


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




```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
