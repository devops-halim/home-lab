module "dev_k3s_DB" {
  source           = "../modules/lxc_container"
  target_node      = "pve"
  hostname         = "dev-k3s-DB"
  ostemplate       = "local:vztmpl/debian-12-standard_12.2-1_amd64.tar.zst"
  ssh_public_keys  = <<-EOT
    ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAJuELlwuhoJLErLcIPy21ubjo40UvWnte7O3gKwirh9 a@alnasani.com
  EOT
  rootfs_storage   = "local-lvm"
  rootfs_size      = "50G"
  network_name     = "eth0"
  network_bridge   = "vmbr0"
  network_ip       = "dhcp"
  # network_gateway = "192.168.178.1"  # Uncomment to set a gateway
}
