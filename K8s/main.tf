module "AutomationController" {
  source = "../modules/VMDeploymentPXE"

  vsphere_datacenter = "Datacenter"

  vsphere_datastore = "datastore1"

  vsphere_cluster = "LabCluster"

  vsphere_resource_pool_name = "/Resources"

  vsphere_network_name = "VM Network"

  vm_name = "K8Control"

  vm_cpus = 1

  vm_memory = 8072

  vm_size = 40

  vm_guest_id = "rhel8_64Guest" # Using rhel8_64Guest because rhel9 can't be found

  vm_iso_path = "/RHEL/rhel-9.3-x86_64-boot.iso"

}

module "AutomationController" {
  source = "../modules/VMDeploymentPXE"

  vsphere_datacenter = "Datacenter"

  vsphere_datastore = "datastore1"

  vsphere_cluster = "LabCluster"

  vsphere_resource_pool_name = "/Resources"

  vsphere_network_name = "VM Network"

  vm_name = "K8Worker"

  vm_cpus = 1

  vm_memory = 8072

  vm_size = 40

  vm_guest_id = "rhel8_64Guest" # Using rhel8_64Guest because rhel9 can't be found

  vm_iso_path = "/RHEL/rhel-9.3-x86_64-boot.iso"

}

module "AutomationController" {
  source = "../modules/VMDeploymentPXE"

  vsphere_datacenter = "Datacenter"

  vsphere_datastore = "datastore1"

  vsphere_cluster = "LabCluster"

  vsphere_resource_pool_name = "/Resources"

  vsphere_network_name = "VM Network"

  vm_name = "K8Worker"

  vm_cpus = 1

  vm_memory = 8072

  vm_size = 40

  vm_guest_id = "rhel8_64Guest" # Using rhel8_64Guest because rhel9 can't be found

  vm_iso_path = "/RHEL/rhel-9.3-x86_64-boot.iso"

}