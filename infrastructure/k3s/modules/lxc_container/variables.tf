variable "target_node" {
  description = "The Proxmox node to host the container"
  type        = string
}

variable "hostname" {
  description = "Hostname of the container"
  type        = string
}

variable "ostemplate" {
  description = "Template for the LXC container"
  type        = string
}

variable "ssh_public_keys" {
  description = "SSH public keys to configure in the container"
  type        = string
  default     = ""
}

variable "rootfs_storage" {
  description = "Storage pool for the root filesystem"
  type        = string
}

variable "rootfs_size" {
  description = "Size of the root filesystem"
  type        = string
}

variable "network_name" {
  description = "Name of the network interface"
  type        = string
}

variable "network_bridge" {
  description = "Bridge interface for the network"
  type        = string
}

variable "network_ip" {
  description = "IP address of the container (use 'dhcp' for dynamic IP)"
  type        = string
  default     = "dhcp"
}

variable "network_gateway" {
  description = "Gateway for the container"
  type        = string
  default     = null
}
variable "cores" { 
        type = number
        default = 2 
    }
variable "memory" { 
    type = number 
    default = 4096
}
