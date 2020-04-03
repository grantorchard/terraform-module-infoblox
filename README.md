This module is used to request the next available IP from a given network range in Infoblox, and then creates the associated DNS record to go with it. If a VM ID and MAC address is provided, it will also create an association with this information

Example usage:

```
module infoblox {
  source   = "../terraform-module-infoblox"
  hostname = "minio"
  cidr     = "10.0.0.0/24"
  mac_addr = vsphere_virtual_machine.this.network_interface.0.mac_address
  vm_id    = vsphere_virtual_machine.this.id
}
```