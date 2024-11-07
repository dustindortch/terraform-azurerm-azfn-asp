output "app_service_plan" {
  value = azurerm_service_plan.sp
}

output "function_apps" {
  value = {
    for k, v in var.functions : k => azurerm_linux_function_app.fa[k]
  }
}
