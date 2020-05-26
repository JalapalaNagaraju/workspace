terraform {
  backend "azurerm" {
    resource_group_name  = "sub10-rg"
    storage_account_name = "sub10remotestate"
    container_name       = "workspace"
    key                  = "tfstate"
  }
}
