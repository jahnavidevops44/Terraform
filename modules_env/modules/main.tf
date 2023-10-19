

provider "azurerm" {
  
features {}
subscription_id = "55d89670-4bfe-4213-9e5c-1fe0cec33755"
client_id = "168e92fe-f035-4f31-b409-9c0d0cbafb47"
client_secret = "7Sl8Q~nc__vVFPxPNw5sukvAFtLuVRAdMxg_1cL8"
tenant_id = "cadc97f6-7230-4811-ab69-0f79018a75ec"
}

resource "azurerm_resource_group" "rg" {
  name     = "jdrg"
  location = "East US"
}
resource "azurerm_virtual_network" "vnet" {
   name                = "${var.prefix}-10"
  #name                = var.vnetname
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space      =  ["${var.vnet_cidr_prefix}"]

}
resource "azurerm_subnet" "subnet" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["${var.subnet_cidr_prefix}"]
}
