# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.88.1"
    }
  }

  required_version = ">= 1.0.11"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "linux-clouds-rg"
  location = var.location
}

