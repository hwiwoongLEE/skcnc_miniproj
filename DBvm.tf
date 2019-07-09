resource "azurerm_virtual_machine" "myDBterraformvm" {
    name                  = "user11DBVM"
    location              = "koreasouth"
    resource_group_name   = "${azurerm_resource_group.myterraformgroup.name}"
    network_interface_ids = ["${azurerm_network_interface.myDBterraformnic.id}"]
    vm_size               = "Standard_D2s_v3"

    storage_os_disk {
        name              = "user11DBOsDisk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }

    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "18.04-LTS"
	version   = "latest"
    }

    os_profile {
        computer_name  = "user11DBvm"
        admin_username = "azureuser"
    }

    os_profile_linux_config {
        disable_password_authentication = true
        ssh_keys {
            path     = "/home/azureuser/.ssh/authorized_keys"
            key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDbcKF2exGPLWkWLNquf+3iQt+B3lMZE2YRSF8DuGn6vH7M1G9zqy4aI2aR6bmuZzGMrI0WoYjbQn9q0WhadPsYBjKuRDOdck7yf69TqARXyQF15gDwxyY4Zv5gHRe/fjafhvcbjoXZsvn0gX8jYfFHeaQEtxwL6SC+ImrxSUyU+g5n8+WXXsyjpJEA4QlEisVwfuaaegiuMARggCYYMrnPugRSr+OmhrOyYO0AL8uzKmkt0z6GuAjww1/9h59S28+wh9bWVd16KBDpZD8zipK8Bgwbhi9ZB8Tq0IAGfUMkz+IW9vrzdS5jTLJp3p6y0ek3xLUTG/Ng16BUyIZO90ih user11@cc-dea1c1e-d9c7cc4d5-5bwjf"
        }
    }
}
