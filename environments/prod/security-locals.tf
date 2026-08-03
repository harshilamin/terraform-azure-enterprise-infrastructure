locals {
  private_endpoint_subnet_prefix = ["10.30.3.0/24"]

  private_dns_zones = {
    key_vault = "privatelink.vaultcore.azure.net"
    acr       = "privatelink.azurecr.io"
    blob      = "privatelink.blob.core.windows.net"
    file      = "privatelink.file.core.windows.net"
  }
}
