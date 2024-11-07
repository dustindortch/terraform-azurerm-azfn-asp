# terraform-azurerm-azfn-asp

This module creates an Azure App Service Plan and Azure Function Apps.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 4.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_function_app.fa](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app) | resource |
| [azurerm_service_plan.sp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_functions"></a> [functions](#input\_functions) | A map of function apps to create | <pre>map(object({<br>    runtime = object({<br>      name    = string<br>      version = string<br>    })<br>  }))</pre> | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location in which to create the resources | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the App Service Plan | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the resources | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_service_plan"></a> [app\_service\_plan](#output\_app\_service\_plan) | n/a |
| <a name="output_function_apps"></a> [function\_apps](#output\_function\_apps) | n/a |
<!-- END_TF_DOCS -->