#Resource group
resource "azurerm_resource_group" "aks-rg" {
  name     = "wdi23"
  location = "West Europe"
}

#ACR
resource "azurerm_container_registry" "acr" {
  name                = "wdi23acr"
  resource_group_name = azurerm_resource_group.aks-rg.name
  location            = azurerm_resource_group.aks-rg.location
  sku                 = "Standard"
  admin_enabled       = false
}

#AKS
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "wdi23aks"
  kubernetes_version  = "1.25.5"
  location            = azurerm_resource_group.aks-rg.location
  resource_group_name = azurerm_resource_group.aks-rg.name
  dns_prefix          = "wdi23aks"

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

#Kubeconfig
resource "local_file" "kubeconfig" {
  depends_on   = [azurerm_kubernetes_cluster.aks]
  filename     = "kubeconfig"
  content      = azurerm_kubernetes_cluster.aks.kube_config_raw
}

#Network watcher
resource "azurerm_network_watcher" "example" {
  name                = "wdi23nw"
  location            = azurerm_resource_group.aks-rg.location
  resource_group_name = azurerm_resource_group.aks-rg.name
}

#Managed disk
resource "azurerm_managed_disk" "md" {
  create_option        = "Empty"
  location             = azurerm_resource_group.aks-rg.location
  name                 = "wdi23md"
  resource_group_name  = azurerm_resource_group.aks-rg.name
  storage_account_type = "Standard_LRS"
  disk_size_gb         = "1"
}

#Azure Key vault
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  location            = azurerm_resource_group.aks-rg.location
  name                = "wdi23kv"
  resource_group_name = azurerm_resource_group.aks-rg.name
  sku_name            = "standard"
  tenant_id           = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
}