module "dev_k3s_worker_node_01" {
  source         = "../modules/proxmox_vm"
  name           = "dev-k3s-worker-node-01"
  vm_id          = 202
  target_node    = "pve"
  clone          = "debian-12"
  full_clone     = true
  cores          = 1
  memory         = 2048
  disk_slot      = "scsi0"
  disk_size      = "32G"
  disk_storage   = "local-lvm"
  network_bridge = "vmbr0"
}



# worker-node-02

module "dev_k3s_worker_node_02" {
  source         = "../modules/proxmox_vm"
  name           = "dev-k3s-worker-node-02"
  vm_id          = 203
  target_node    = "pve"
  clone          = "debian-12"
  full_clone     = true
  cores          = 1
  memory         = 2048
  disk_slot      = "scsi0"
  disk_size      = "32G"
  disk_storage   = "local-lvm"
  network_bridge = "vmbr0"
}


# worker-node-03

module "dev_k3s_worker_node_03" {
  source         = "../modules/proxmox_vm"
  name           = "dev-k3s-worker-node-03"
  vm_id          = 204
  target_node    = "pve-02"
  clone          = "clone-debian-12"
  full_clone     = true
  cores          = 2
  memory         = 8192
  disk_slot      = "scsi0"
  disk_size      = "60G"
  disk_storage   = "local-lvm(pve-02)"
  network_bridge = "vmbr0"
}


# worker-node-03

module "dev_k3s_worker_node_04" {
  source         = "../modules/proxmox_vm"
  name           = "dev-k3s-worker-node-04"
  vm_id          = 205
  target_node    = "pve-02"
  clone          = "clone-debian-12"
  full_clone     = true
  cores          = 2
  memory         = 8192
  disk_slot      = "scsi0"
  disk_size      = "60G"
  disk_storage   = "local-lvm(pve-02)"
  network_bridge = "vmbr0"
}