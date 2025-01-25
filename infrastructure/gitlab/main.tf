module "gitlab-server" {
  source         = "../k3s/modules/proxmox_vm"
  name           = "gitlab-server"
  vm_id          = 206
  target_node    = "pve-02"
  clone          = "clone-debian-12"
  full_clone     = true
  cores          = 3
  memory         = 12288
  disk_slot      = "scsi0"
  disk_size      = "60G"
  disk_storage   = "local-lvm(pve-02)"
  network_bridge = "vmbr0"
}





# module "gitlab-server" {
#   source         = "./modules/proxmox_vm"
#   name           = "gitlab-server"
#   vm_id          = 300
#   target_node    = "pve-02"
#   clone          = "clone-debian-12"
#   full_clone     = true
#   cores          = 3
#   memory         = 16384
#   disk_slot      = "scsi0"
#   disk_size      = "60G"
#   disk_storage   = "local-lvm(pve-02)"
#   network_bridge = "vmbr0"

#   # Cloud-init configuration
#   username       = "admin"
#   #password       = "securepassword" # Optional
#   ip_address     = "192.168.178.170"
#   gateway        = "192.168.178.1"
#   #ssh_public_key = "ssh-rsa AAAAB..."
#   #searchdomain   = "example.com"
#   #nameserver     = "8.8.8.8"
# }


# module "gitlab-server" {
#   source         = "./modules/proxmox_vm"
#   name           = "gitlab-server"
#   vm_id          = 300
#   target_node    = "pve"
#   clone          = "debian-12"
#   full_clone     = true
#   cores          = 3
#   memory         = 8096
#   disk_slot      = "scsi0"
#   disk_size      = "10G"
#   disk_storage   = "local-lvm"
#   network_bridge = "vmbr0"

#   # Cloud-init configuration
#   username       = "admin"
#   #password       = "securepassword" # Optional
#   ip_address     = "192.168.178.170"
#   gateway        = "192.168.178.1"
#   #ssh_public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAJuELlwuhoJLErLcIPy21ubjo40UvWnte7O3gKwirh9 a@alnasani.com"
#   #searchdomain   = "example.com"
#   nameserver     = "8.8.8.8"
# }
