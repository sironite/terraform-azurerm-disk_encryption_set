<!-- BEGIN_TF_DOCS -->
 ## Disk Encryption Set

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-disk_encryption_set/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/3.63.0/docs/resources/disk_encryption_set)

# Usage - Module

## Disk Encryption Set
```hcl


module "disk_encryption_set" {
  source  = "sironite/disk_encryption_set/azurerm"
  version = "X.X.X"

  disk_encryption_set_name  = "my-disk-encryption-set"
  resource_group_name       = "my-resource-group"
  location                  = "westeurope"
  key_vault_key_id          = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.KeyVault/vaults/my-key-vault/keys/my-key"
  auto_key_rotation_enabled = true

  identity {
    type = "SystemAssigned"
  }
}

```

## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_disk_encryption_set.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| disk\_encryption\_set\_name | Name of the disk encryption set. | `string` | yes |
| key\_vault\_key\_id | ID of the key vault key. | `string` | yes |
| location | Location of the resource group. | `string` | yes |
| resource\_group\_name | Name of the resource group. | `string` | yes |
| auto\_key\_rotation\_enabled | Whether to enable auto key rotation. | `bool` | no |
| encryption\_type | Type of encryption. | `string` | no |
| federated\_client\_id | ID of the federated client. | `string` | no |
| identity\_ids | List of identity IDs. | `list(string)` | no |
| identity\_type | Type of identity. | `string` | no |

## Outputs

| Name | Description |
|------|-------------|
| disk\_encryption\_set\_id | The ID of the disk encryption set. |
| disk\_encryption\_set\_name | The name of the disk encryption set. |

## Related documentation
<!-- END_TF_DOCS -->