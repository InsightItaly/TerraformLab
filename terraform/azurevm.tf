/*
resource "azurerm_network_interface" "TerraformLabMain" {
   name                = "${var.prefix}-nic"
   location            = "${azurerm_resource_group.TerraformLabMain.location}"
   resource_group_name = "${azurerm_resource_group.TerraformLabMain.name}"
  
   ip_configuration {
     name                          = "testconfiguration1"
     subnet_id                     = "${azurerm_subnet.TerraformLabMainSubnet_server.id}"
     private_ip_address_allocation = "Dynamic"
   }
 }

 resource "azurerm_virtual_machine" "TerraformLabMain" {
   name                  = "${var.prefix}-vm"
   location              = "${azurerm_resource_group.TerraformLabMain.location}"
   resource_group_name   = "${azurerm_resource_group.TerraformLabMain.name}"
   network_interface_ids = ["${azurerm_network_interface.TerraformLabMain.id}"]
   vm_size               = "Standard_DS1_v2"

   # Uncomment this line to delete the OS disk automatically when deleting the VM
   # delete_os_disk_on_termination = true

   # Uncomment this line to delete the data disks automatically when deleting the VM
   # delete_data_disks_on_termination = true

   storage_image_reference {
     publisher = "Canonical"
     offer     = "UbuntuServer"
     sku       = "16.04-LTS"
     version   = "latest"
   }
   storage_os_disk {
     name              = "myosdisk1"
     caching           = "ReadWrite"
     create_option     = "FromImage"
     managed_disk_type = "Standard_LRS"
   }
   os_profile {
     computer_name  = "hostname"
     admin_username = "contosoadmin"
     admin_password = "Password1234!"
   }
   os_profile_linux_config {
     disable_password_authentication = false
   }
   tags = {
     environment = "Production",
     department = "ICS"
   }
} 
*/