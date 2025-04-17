provider "vsphere" {
  user                 = "administrator@vsphere.local"
  password             = "password"
  vsphere_server       = "vsphere.example.com"
  allow_unverified_ssl = true
}
