resource "azurerm_resource_group" "terrakota" { 
    name = "terrakota" 
    location = "East US" 
    }

resource "azurerm_storage_account" "mysaterra09" {
    name                     = "storagehk09"
    resource_group_name      = azurerm_resource_group.terrakota.name
    location                 = azurerm_resource_group.terrakota.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
 
resource "azurerm_storage_container" "mysacontainer10" {
    name                  = "my-casestudy-container1"
    storage_account_name  = azurerm_storage_account.terrakota.name
    container_access_type = "private"
}