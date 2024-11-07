variable "name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "functions" {
  description = "A map of function apps to create"
  type = map(object({
    runtime = object({
      name    = string
      version = string
    })
  }))
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources"
  type        = string
}

variable "location" {
  description = "The location in which to create the resources"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account to use for the function apps"
  type        = string
}
