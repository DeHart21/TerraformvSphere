terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = ">= 1.25.0"
    }
  }
}


provider "vsphere" {
  user                = var.vsphere_user
  password            = var.vsphere_password
  vsphere_server      = var.vsphere_server
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "datacenter" {
  name = var.vsphere_datacenter
}

data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_compute_cluster" "cluster" {
  name          = var.vsphere_cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_resource_pool" "default" {
  name          = format("%s%s", data.vsphere_compute_cluster.cluster.name, var.vsphere_resource_pool_name)
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_network" "network" {
  name          = var.vsphere_network_name
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_virtual_machine" "vm" {
  name             = var.vm_name
  resource_pool_id = "${data.vsphere_resource_pool.default.id}"
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = var.vm_cpus
  memory           = var.vm_memory
  guest_id         = var.vm_guest_id
  network_interface {
    network_id = data.vsphere_network.network.id
  }
  disk {
    label = "disk0"
    size  = var.vm_size
  }
  cdrom {
    datastore_id = data.vsphere_datastore.datastore.id
    path         = var.vm_iso_path
  }
}
