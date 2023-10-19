variable "rgname"{
  type= string
  description = "used for naming resource group"
  default = "myTFjdrg1"
}
variable "rglocation"{
  default = "East US"
}

variable "vnetname" {
  type = string
  default = "myTFvnet1"
}
variable "subnetname"{
  default = "myTFjdsubnet1"
}
variable "vnet_cidr_prefix"{
 type = string
 description = "vnet cidr block"
}
variable "subnet_cidr_prefix"{
 type = string
 description = "subnet cidr"
}
variable "prefix" {
  type = string
  description = "The prefix used for all resources in this "
  
}



