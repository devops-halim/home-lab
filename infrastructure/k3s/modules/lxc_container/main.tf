resource "proxmox_lxc" "container" {
  target_node  = var.target_node
  hostname     = var.hostname
  ostemplate   = var.ostemplate
  cores        = var.cores
  memory       = var.memory
  ssh_public_keys = var.ssh_public_keys

  rootfs {
    storage = var.rootfs_storage
    size    = var.rootfs_size
  }

  network {
    name    = var.network_name
    bridge  = var.network_bridge
    ip      = var.network_ip
    #gateway = var.network_gateway
  }
}
