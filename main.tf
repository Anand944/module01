terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "ResourceGroup"{
    source = "./ResourceGroup"
    resource_group_name = "terraform08"
    location = "east us"
    
}

module "StorageAccount"{
    source = "./StorageAccount"
    resource_group_name  =  "terraform08"
    location = "east us"
    
}