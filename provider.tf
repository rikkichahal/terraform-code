terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.87.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  skip_provider_registration = true
  features {
    
  }
  

  

}