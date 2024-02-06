## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_creatnsg"></a> [creatnsg](#input\_creatnsg) | (Optional) Do you want to create Network secuirty group | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | Location where nsg will be created | `string` | n/a | yes |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | The name of nsg | `string` | n/a | yes |
| <a name="input_rgname"></a> [rgname](#input\_rgname) | This a resource group name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Output id of the nsg |
