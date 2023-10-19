/*terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    } 
  }
}*/
module "module_prod" {
  source = "./modules"
    prefix = "prod"
    vnet_cidr_prefix = "10.30.0.0/16"
    subnet_cidr_prefix = "10.30.1.0/24"
    rgname = "ProdRg"
    subnetname = "ProdSubnet"
    #vnetname = "ProdVnet"
}
