#Resource group
resource "azurerm_resource_group" "aks-rg" {
  name     = var.resource_group_name
  location = var.location
}

#ACR
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.aks-rg.name
  location            = var.location
  sku                 = "Standard"
  admin_enabled       = false
}

#AKS
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  kubernetes_version  = var.kubernetes_version
  location            = var.location
  resource_group_name = azurerm_resource_group.aks-rg.name
  dns_prefix          = var.cluster_name

  default_node_pool {
    name                = "default"
    node_count          = 1
    vm_size             = "Standard_B2s"
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }
}

#Managed disk
resource "azurerm_managed_disk" "md" {
  create_option        = "Empty"
  location             = var.location
  name                 = "wdi23md"
  resource_group_name  = azurerm_resource_group.aks-rg.name
  storage_account_type = "Standard_LRS"
  disk_size_gb         = "1"
}