variable "resource_group_name" {
  type        = string
  description = "Resource group name in Azure"
}
variable "cluster_name" {
  type        = string
  description = "Azure Kubernetes Service name"
}
variable "acr_name" {
  type        = string
  description = "Azure Container Registry name"
}
variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}
variable "location" {
  type        = string
  description = "Location of services"
}