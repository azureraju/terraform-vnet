terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "e58b54d7-2056-4c1d-88fd-c6b1bb1a406d"
    tenant_id       = "1efc97aa-1a5e-4497-b876-73c2dbcbad33"
    client_id       = "04a95f4b-7994-4322-9880-693d4ca68292"
    client_secret   = "C1Q8Q~TJ2I37RchDxpLy0Sg0CeVcPhRzBKxmpcvU"
 
  features {}
}
