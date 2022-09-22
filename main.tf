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
    base_name = "terraform08"
    location = "east us"
    
}

module "StorageAccount"{
    source = "./StorageAccount"
    base_name = "terraform08"
    resource_group_name  = module.ResourceGroup.rg_name_out
    location = "east us"
    
}