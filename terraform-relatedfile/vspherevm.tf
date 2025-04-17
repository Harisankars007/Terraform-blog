provider "vsphere" {
  user                 = "administrator@vsphere.local"
  password             = "password"
  vsphere_server       = "vsphere.example.com"
  allow_unverified_ssl = true
}
resource "vsphere_virtual_machine" "vm" {
  name             = "on-prem-vm"
  resource_pool_id = "resgroup-123"
  datastore_id     = "datastore-456"
  num_cpus         = 2
  memory           = 4096
  guest_id         = "ubuntu64Guest"
}
