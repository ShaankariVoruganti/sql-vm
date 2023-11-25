resource "azurerm_traffic_manager_azure_endpoint" "example" {
  name               = var.endpoint1_name
  profile_id         = var.traffic_manager_profile_id
  weight             = var.weight1
  target_resource_id = var.vm1_pip
}

resource "azurerm_traffic_manager_azure_endpoint" "example" {
  name               = var.endpoint2_name
  profile_id         = var.traffic_manager_profile_id
  weight             = var.weight2
  target_resource_id = var.vm2_pip
}
