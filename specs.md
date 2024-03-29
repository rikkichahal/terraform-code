## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.87.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.87.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nsg"></a> [nsg](#module\_nsg) | ./modules/nsg | n/a |
| <a name="module_subnet"></a> [subnet](#module\_subnet) | ./modules/subnet | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_application_gateway.network](https://registry.terraform.io/providers/hashicorp/azurerm/3.87.0/docs/resources/application_gateway) | resource |
| [azurerm_public_ip.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.87.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.87.0/docs/resources/resource_group) | resource |
| [azurerm_subnet_network_security_group_association.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.87.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.87.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | These are the subnets address | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24",<br>  "10.0.4.0/24"<br>]</pre> | no |
| <a name="input_appgw_name"></a> [appgw\_name](#input\_appgw\_name) | n/a | `list(string)` | <pre>[<br>  "",<br>  "",<br>  "",<br>  ""<br>]</pre> | no |
| <a name="input_backend_address_pool_name"></a> [backend\_address\_pool\_name](#input\_backend\_address\_pool\_name) | n/a | `list(string)` | <pre>[<br>  "port1",<br>  "port2",<br>  "port3",<br>  "port4"<br>]</pre> | no |
| <a name="input_frontend_ip_configuration_name"></a> [frontend\_ip\_configuration\_name](#input\_frontend\_ip\_configuration\_name) | n/a | `list(string)` | <pre>[<br>  "port1",<br>  "port2",<br>  "port3",<br>  "port4"<br>]</pre> | no |
| <a name="input_frontend_port_name"></a> [frontend\_port\_name](#input\_frontend\_port\_name) | Front end port names | `list(string)` | <pre>[<br>  "port1",<br>  "port2",<br>  "port3",<br>  "port4"<br>]</pre> | no |
| <a name="input_http_setting_name"></a> [http\_setting\_name](#input\_http\_setting\_name) | n/a | `list(string)` | <pre>[<br>  "port1",<br>  "port2",<br>  "port3",<br>  "port4"<br>]</pre> | no |
| <a name="input_listener_name"></a> [listener\_name](#input\_listener\_name) | n/a | `list(string)` | <pre>[<br>  "port1",<br>  "port2",<br>  "port3",<br>  "port4"<br>]</pre> | no |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | n/a | `list(string)` | <pre>[<br>  "nsg1",<br>  "nsg2",<br>  "nsg3",<br>  "nsg4"<br>]</pre> | no |
| <a name="input_pip"></a> [pip](#input\_pip) | n/a | `list(string)` | <pre>[<br>  "pip1",<br>  "pip2",<br>  "pip3",<br>  "pip4"<br>]</pre> | no |
| <a name="input_redirect_configuration_name"></a> [redirect\_configuration\_name](#input\_redirect\_configuration\_name) | Redirect config names | `list(string)` | <pre>[<br>  "port1",<br>  "port2",<br>  "port3",<br>  "port4"<br>]</pre> | no |
| <a name="input_request_routing_rule_name"></a> [request\_routing\_rule\_name](#input\_request\_routing\_rule\_name) | n/a | `list(string)` | <pre>[<br>  "port1",<br>  "port2",<br>  "port3",<br>  "port4"<br>]</pre> | no |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | subnet names | `list(string)` | <pre>[<br>  "subnet1",<br>  "subnet2",<br>  "subnet3",<br>  "subnet4"<br>]</pre> | no |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | n/a | `list(string)` | n/a | yes |

## Outputs

No outputs.
