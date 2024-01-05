variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type = string
}

variable "vsphere_server" {
  type = string
}

variable "vsphere_datacenter" {
  type = string
}

variable "vsphere_datastore" {
  type = string
}

variable "vsphere_cluster" {
  type = string
}

variable "vsphere_resource_pool_name" {
  type = string
}

variable "vsphere_network_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_cpus" {
  type = number
}

variable "vm_memory" {
  type = number
}

variable "vm_size" {
  type = number
}

variable "vm_guest_id" {
  type = string
}

variable "vm_iso_path" {
  type = string
}
