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

//--------------------------------------------------------------------
// Modules
module "nginx" {
  source  = "app.terraform.io/nik1/nginx/module"
  version = "1.0.4"

  company = "nik"
  description = "nginx"
  environment = "dev"
  network-vnet-cidr = "10.10.0.0/16"
  nginx_admin_password = "Password123!"
  nginx_admin_username = "amin"
  nginx_vm_size = "Standard_B2s"
  owner = "Amin Niktash"
  prefix = "AZ"
  vm-subnet-cidr = "10.10.1.0/24"
}

