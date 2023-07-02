resource "azurerm_resource_group" "resource_groups" {
  for_each = var.resource_groups_config
  name     = each.value["name"]
  location = each.value["location"]
  tags = merge(
    var.tags,
    {
      NAME     = each.value["name"]
      RESOURCE = "azurerm_resource_group"
    },
  )
}