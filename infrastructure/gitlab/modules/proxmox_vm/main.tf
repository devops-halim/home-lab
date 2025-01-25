resource "proxmox_vm_qemu" "vm" {
  name        = var.name
  vmid        = var.vm_id
  target_node = var.target_node
  clone       = var.clone
  full_clone  = var.full_clone
  cores       = var.cores
  memory      = var.memory

  # Main disk
  disk {
    slot    = var.disk_slot
    size    = var.disk_size
    storage = var.disk_storage
    type    = var.disk_type
    cache   = var.disk_cache
    #format   = "raw" # Explicitly set the format raw  or qcow2

  }

  # Cloud-init configuration
  ciuser      = var.username       # Username for cloud-init
  cipassword  = var.password       # Password for the cloud-init user
  ipconfig0   = "ip=${var.ip_address}/24,gw=${var.gateway}" # Static IP and gateway
  sshkeys     = var.ssh_public_key # Inject SSH public key for secure login
  searchdomain = var.searchdomain  # Optional: DNS search domain
  nameserver  = var.nameserver     # Optional: DNS server

  network {
    id         = var.network_id
    bridge     = var.network_bridge
    firewall   = var.network_firewall
    link_down  = var.network_link_down
    model      = var.network_model
  }
}
