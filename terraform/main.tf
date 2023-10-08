provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tf_demo_rg" {
  name     = "TerraformTestFrameworkDemoRG"
  location = "Uk South"
}

module "storage_account" {
  source = "./modules/storageaccount"

  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.tf_demo_rg.name
  location                 = azurerm_resource_group.tf_demo_rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public

  tags = var.tags 
}
