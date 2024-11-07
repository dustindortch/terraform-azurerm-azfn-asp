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
