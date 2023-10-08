variables{
  resource_group_name   = "TerraformTestFrameworkDemoRG"
}

provider "azurerm" {
    features {}
  
}

run "unit_tests"{
  command = plan

  variables {
    resource_group_name = var.resource_group_name
  }

  assert {
    condition     = azurerm_storage_account.demoterraformtestframework.allow_nested_items_to_be_public == false
    error_message = "public access to containers/blobs should be disabled"
  }

}