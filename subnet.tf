resource "azurerm_subnet" "myterraformsubnet" {
    name                 = "user11Subnet1"
    resource_group_name  = "${azurerm_resource_group.myterraformgroup.name}"
    virtual_network_name = "${azurerm_virtual_network.myterraformnetwork.name}"
    address_prefix       = "15.0.1.0/24"
}

resource "azurerm_subnet" "myterraformsubnet2" {
    name                 = "user11Subnet2"
    resource_group_name  = "${azurerm_resource_group.myterraformgroup.name}"
    virtual_network_name = "${azurerm_virtual_network.myterraformnetwork.name}"
    address_prefix       = "15.0.2.0/24"
}


