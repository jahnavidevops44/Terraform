variable "rgname"{
  type= string
  description = "used for naming resource group"
  default = "myTFjdrg1"
}
variable "rglocation"{
  default = "East US"
}

variable "vnetname" {
  default = "myTFvnet1"
}
variable "subnetname"{
  default = "myTFjdsubnet1"
}
variable "vnetaddress_space"
{
 default = "10.10.0.0/16"
}
variable "subnetaddress_space
{
 default = "10.10.1.0/24"
}



