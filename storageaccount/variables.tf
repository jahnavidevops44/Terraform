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
