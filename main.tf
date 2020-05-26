provider "azurerm" {
  version = "= 2.9.0"
  features {}
}


resource "azurerm_resource_group" "example" {
  name     = var.rg
  location = var.location
}

variable "rg" {}

variable "location" {}
