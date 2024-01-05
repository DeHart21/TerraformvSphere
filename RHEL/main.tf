module "VMDeployment" {
  source = "../modules/VMDeployment"

  vsphere_datacenter = "Datacenter"

  vsphere_datastore = "datastore1"

  vsphere_cluster = "LabCluster"

  vsphere_resource_pool_name = "/Resources"

  vsphere_network_name = "VM Network"

  vm_name = "rhel"

  vm_cpus = 1

  vm_memory = 1024

  vm_size = 20

  vm_guest_id = "rhel8_64Guest"

  vm_iso_path = "/RHEL/rhel-8.6-x86_64-dvd.iso"


}