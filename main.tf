terraform {
    required_providers {
      azurerm = {
       source = "hashicorp/azurerm"
       version = "=2.46.0"
      }
    }

    backend "azurerm" {
        resource_group_name = "rg-for-storage"
        storage_account_name = "1500"
        container_name = "1500"
        key = "1500"
        access_key = "JmD//U+xroNR09zVAE1VtS6rfHPm6gKieHf//IUoZgXL9vrRkchxi9IwBkBcZ92ZAyyz+1eRtSkNEJm3kGomgw=="
      
    }
}

provider "azurerm" {
    features {}
    subscription_id = var.subscription_id
    tenant_id = var.tenant_id
}

terraform {
    required_version = ">=0.12"
}