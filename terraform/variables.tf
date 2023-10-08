variable "storage_account_name" {
    default = "demoterraformtestframework"
}

variable "storage_account_tier" {
    default = "Standard"
}

variable "storage_account_replication" {
    default = "LRS"
}

variable "allow_nested_items_to_be_public" {
    default = "True"
}

variable "tags" {
  default = {
    environment = "dev"
    team        = "devops" 
    owner       = "terraform"
  }
}