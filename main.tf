
terraform {

  required_providers {

    azurerm = {

      source = "hashicorp/azurerm"

      version = "~> 4.0"

    }

  }



  backend "azurerm" {

    resource_group_name = "rg-terraform-state"

    storage_account_name = "tfstatelab2026"

    container_name = "tfstate"

    key = "azure-container-infrastructure.tfstate"

  }

}



provider "azurerm" {

  features {}

  subscription_id = "71b31346-1819-4f4d-9f6b-e873cfeeaf04"

}



resource "azurerm_resource_group" "main" {

  name = "rg-container-lab"

  location = var.location

}



resource "azurerm_container_group" "web" {

  name = "aci-aj-nginx"

  location = azurerm_resource_group.main.location

  resource_group_name = azurerm_resource_group.main.name

  ip_address_type = "Public"

  os_type = "Linux"



  container {

    name = "aj-nginx"

    image = var.container_image

    cpu = var.cpu

    memory = var.memory



    ports {

      port = 80

      protocol = "TCP"
    }
  }

  tags = {
    environment = "lab"
    built-by    = "AJ Amit Kumar"
  }
}

output "container_ip" {
  description = "Public IP of the container"
  value       = azurerm_container_group.web.ip_address
}

output "container_fqdn" {
  description = "Fully qualified domain name"
  value       = azurerm_container_group.web.fqdn
}
