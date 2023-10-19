terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
  
features {}
subscription_id = "55d89670-4bfe-4213-9e5c-1fe0cec33755"
client_id = "168e92fe-f035-4f31-b409-9c0d0cbafb47"
client_secret = "7Sl8Q~nc__vVFPxPNw5sukvAFtLuVRAdMxg_1cL8"
tenant_id = "cadc97f6-7230-4811-ab69-0f79018a75ec"
}

data "azurerm_resource_group" "rg1" {
  name     = "rgjd"
  
}
resource "azurerm_virtual_network" "vnet1" {
   name                = "jdvnet"
  location            = data.azurerm_resource_group.rg1.location
  resource_group_name = data.azurerm_resource_group.rg1.name
  address_space       = ["10.0.0.0/16"]

}
resource "azurerm_subnet" "subnet1" {
  name                 = "jdsubnet"
  resource_group_name  = data.azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.0.1.0/24"]
}
