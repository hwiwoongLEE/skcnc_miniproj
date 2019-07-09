resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "user11Vnet"
    address_space       = ["15.0.0.0/16"]
    location            = "koreasouth"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"

    tags = {
        environment = "Team5 Vnet"
    }
}
