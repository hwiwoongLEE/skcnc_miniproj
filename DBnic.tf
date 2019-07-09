resource "azurerm_network_interface" "myDBterraformnic" {
    name                = "user11DBNIC"
    location            = "koreasouth"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"
    network_security_group_id = "${azurerm_network_security_group.myDBterraformnsg.id}"

    ip_configuration {
        name                          = "user11DBNicConfiguration"
        subnet_id                     = "${azurerm_subnet.myterraformsubnet2.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.myDBterraformpublicip.id}"
    }
}

