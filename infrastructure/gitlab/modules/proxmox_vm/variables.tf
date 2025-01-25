variable "name" {}
variable "target_node" {}
variable "clone" {}
variable "full_clone" { default = true }
variable "cores" { default = 2 }
variable "memory" { default = "8192" }
variable "disk_slot" { default = "scsi0" }
variable "disk_size" { default = "32G" }
variable "disk_storage" {}
variable "disk_type" { default = "disk" }
variable "disk_cache" { default = "writeback" }
variable "network_id" { default = 0 }
variable "network_bridge" {}
variable "network_firewall" { default = false }
variable "network_link_down" { default = false }
variable "network_model" { default = "e1000" }
# variable "user_data" {
#   description = "User data for cloud-init configuration"
#   type        = string
# }
# variable "cloud_init_user_data" {
#   description = "Path to the cloud-init user data YAML file"
#   type        = string
# }

variable "vm_id" {
  type = number
}
variable "ssh_public_key" {
  description = "SSH public key for the VMs"
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAJuELlwuhoJLErLcIPy21ubjo40UvWnte7O3gKwirh9 a@alnasani.com"
  type        = string
}

# variable "vm_count" {
#   description = "Number of VMs to create"
#   type        = number
# }

# variable "username" {
#   description = "Username for SSH access"
#   type        = string
# }

variable "username" {
  description = "Username for cloud-init"
  type        = string
}

variable "password" {
  description = "Password for cloud-init user"
  type        = string
  default     = null # Set to null if not needed
}

variable "ip_address" {
  description = "Static IP address for the VM"
  type        = string
}

variable "gateway" {
  description = "Default gateway for the VM"
  type        = string
}



variable "searchdomain" {
  description = "DNS search domain (optional)"
  type        = string
  default     = null
}

variable "nameserver" {
  description = "DNS server (optional)"
  type        = string
  default     = null
}
