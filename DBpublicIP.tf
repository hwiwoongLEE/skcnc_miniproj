resource "azurerm_public_ip" "myDBterraformpublicip" {
    name                         = "user11DBPublicIP"
    location                     = "koreasouth"
    resource_group_name          = "${azurerm_resource_group.myterraformgroup.name}"
    allocation_method            = "Dynamic"
}


