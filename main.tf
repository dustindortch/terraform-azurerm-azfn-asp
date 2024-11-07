terraform {
  required_version = "~> 1.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8"
    }
  }
}

resource "azurerm_service_plan" "sp" {
  name                = var.name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "Y1"
}

resource "azurerm_linux_function_app" "fa" {
  for_each = var.functions

  name                          = join("-", [each.key, random_string.rs.result, "azfn"])
  location                      = data.azurerm_resource_group.rg.location
  resource_group_name           = data.azurerm_resource_group.rg.name
  service_plan_id               = azurerm_service_plan.sp.id
  storage_uses_managed_identity = true
  storage_account_name          = azurerm_storage_account.sa.name

  identity {
    type = "SystemAssigned"
  }

  site_config {
    application_stack {
      powershell_core_version = each.value.runtime.name == "powershell" ? each.value.runtime.version : null
      python_version          = each.value.runtime.name == "python" ? each.value.runtime.version : null
    }
  }
}
