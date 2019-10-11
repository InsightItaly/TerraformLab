/*
resource "azurerm_network_security_group" "ContosoLabMain" {
  name                = "ContosoLabMainSecurityGroup"
  location            = "${azurerm_resource_group.ContosoLabMain.location}"
  resource_group_name = "${azurerm_resource_group.ContosoLabMain.name}"
}

resource "azurerm_network_ddos_protection_plan" "ContosoLabMain" {
  name                = "contosolabmainddospplan"
  location            = "${azurerm_resource_group.ContosoLabMain.location}"
  resource_group_name = "${azurerm_resource_group.ContosoLabMain.name}"
}

resource "azurerm_virtual_network" "ContosoLabMain" {
  name                = "ContosoLabMainVirtualNetwork"
  location            = "${azurerm_resource_group.ContosoLabMain.location}"
  resource_group_name = "${azurerm_resource_group.ContosoLabMain.name}"
  address_space       = ["192.168.0.0/16"]
  //dns_servers         = ["192.168.0.4", "192.168.0.5"]

  ddos_protection_plan {
    id     = "${azurerm_network_ddos_protection_plan.ContosoLabMain.id}"
    enable = true
  }

  tags = {
    environment = "Production",
    department = "ICS"
  }
}

resource "azurerm_subnet" "ContosoLabMainSubnet_server" {
  name                 = "server"
  resource_group_name  = "${azurerm_resource_group.ContosoLabMain.name}"
  virtual_network_name = "${azurerm_virtual_network.ContosoLabMain.name}"
  address_prefix = "192.168.1.0/24"
}

resource "azurerm_subnet" "ContosoLabMainSubnet_clients" {
  name                 = "clients"
  resource_group_name  = "${azurerm_resource_group.ContosoLabMain.name}"
  virtual_network_name = "${azurerm_virtual_network.ContosoLabMain.name}"
  address_prefix = "192.168.2.0/24"
}

resource "azurerm_subnet" "ContosoLabMainSubnet_otherservices" {
  name                 = "otherservices"
  resource_group_name  = "${azurerm_resource_group.ContosoLabMain.name}"
  virtual_network_name = "${azurerm_virtual_network.ContosoLabMain.name}"
  address_prefix = "192.168.3.0/24"
}

resource "azurerm_subnet_network_security_group_association" "ContosoLabMainSGSubnet" {
  subnet_id                 = "${azurerm_subnet.ContosoLabMainSubnet_otherservices.id}"
  network_security_group_id = "${azurerm_network_security_group.ContosoLabMain.id}"
}
*/