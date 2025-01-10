terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc6"
    }
  }
}
provider "proxmox" {
  # Configuration options
  pm_api_url ="https://your-dns:8006/api2/json"
  pm_api_token_id ="your-token-id"
  pm_api_token_secret ="your-token-secret"
  pm_tls_insecure=true
}
