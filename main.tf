terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}
//--------------------------------------------------------------------
// Modules
module "demo" {
  source  = "app.terraform.io/nik1/demo/webapp"
  version = "1.0.2"

  app_name = "webapp1"
  company = "nik"
  description = "test webbapp"
  environment = "dev"
  owner = "amin"
}