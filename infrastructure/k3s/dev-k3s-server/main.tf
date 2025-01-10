module "dev_k3s_server_01" {
  source         = "../modules/proxmox_vm"
  name           = "dev-k3s-server-01"
  vm_id          = 200
  target_node    = "pve"
  clone          = "debian-12"
  full_clone     = true
  cores          = 2
  memory         = 5120
  disk_slot      = "scsi0"
  disk_size      = "32G"
  disk_storage   = "local-lvm"
  network_bridge = "vmbr0"

  #cloud_init_user_data = file("../user_data.yml") 
  #user_data     = file("../user_data.yml")  # Path to global user_data.yml
}


module "dev_k3s_server_02" {
  source        = "../modules/proxmox_vm"
  name          = "dev-k3s-server-02"
  vm_id = 201
  target_node   = "pve-02"
  clone         = "clone-debian-12"
  full_clone     = true
  cores          = 2
  memory         = 8192
  disk_slot      = "scsi0"
  disk_size      = "64G"
  disk_storage  = "local-lvm (pve-02)"
  network_bridge = "vmbr0"

  #cloud_init_user_data = file("${path.root}/user_data.yml") 
  #user_data     = file("../user_data.yml")  # Path to global user_data.yml
}