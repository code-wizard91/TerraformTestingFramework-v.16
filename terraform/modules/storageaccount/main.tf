# Storage account resource 
resource "azurerm_storage_account" "sa" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  location                  = var.location  
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  tags                      = var.tags
}