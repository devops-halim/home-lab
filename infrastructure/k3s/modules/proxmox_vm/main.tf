resource "proxmox_vm_qemu" "vm" {
  name        = var.name
  vmid        = var.vm_id
  target_node = var.target_node
  clone       = var.clone
  full_clone  = var.full_clone
  cores       = var.cores
  memory      = var.memory
  

  disk {
    slot    = var.disk_slot
    size    = var.disk_size
    storage = var.disk_storage
    type    = var.disk_type
    cache   = var.disk_cache
  }

  # Cloud-init disk for user_data.yml
  # disk {
  #   slot    = "scsi1"  # Typically use a separate slot for cloudinit
  #   size    = "1G"      # Size of the cloud-init disk
  #   storage = var.disk_storage
  #   type    = "cloudinit"
  #   #content = "cloudinit"
  #   backup  = false
  # }

  # cloudinit {
  #   user_data = var.user_data
  # }

  network {
    id         = var.network_id
    bridge     = var.network_bridge
    firewall   = var.network_firewall
    link_down  = var.network_link_down
    model      = var.network_model
  }
}