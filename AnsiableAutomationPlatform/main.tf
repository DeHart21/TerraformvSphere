module "AutomationController" {
  source = "../modules/VMDeploymentPXE"

  vsphere_datacenter = "Datacenter"

  vsphere_datastore = "datastore1"

  vsphere_cluster = "LabCluster"

  vsphere_resource_pool_name = "/Resources"

  vsphere_network_name = "VM Network"

  vm_name = "AnsibleController"

  vm_cpus = 4

  vm_memory = 3072 #Should be atleast 8 GB for lab purposes (limited with vCenter)

  vm_size = 40

  vm_guest_id = "rhel8_64Guest" # Using rhel8_64Guest because rhel9 can't be found

  vm_iso_path = "/RHEL/rhel-9.3-x86_64-boot.iso"

}

module "AnsibleExecution" {
  source = "../modules/VMDeploymentPXE"

  vsphere_datacenter = "Datacenter"

  vsphere_datastore = "datastore1"

  vsphere_cluster = "LabCluster"

  vsphere_resource_pool_name = "/Resources"

  vsphere_network_name = "VM Network"

  vm_name = "AnsiableExecution"

  vm_cpus = 4

  vm_memory = 3072 #Should be atleast 8 GB for lab purposes (limited with vCenter)

  vm_size = 40

  vm_guest_id = "rhel8_64Guest"

  vm_iso_path = "/RHEL/rhel-9.3-x86_64-boot.iso"


}

module "AutomationHub" {
  source = "../modules/VMDeploymentPXE"

  vsphere_datacenter = "Datacenter"

  vsphere_datastore = "datastore1"

  vsphere_cluster = "LabCluster"

  vsphere_resource_pool_name = "/Resources"

  vsphere_network_name = "VM Network"

  vm_name = "AnsibleAutomationHub"

  vm_cpus = 4

  vm_memory = 3072 #Should be atleast 8 GB for lab purposes (limited with vCenter)

  vm_size = 60

  vm_guest_id = "rhel8_64Guest"

  vm_iso_path = "/RHEL/rhel-9.3-x86_64-boot.iso"

}