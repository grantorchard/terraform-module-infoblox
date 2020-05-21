resource infoblox_ip_allocation "this" {
  network_view_name = var.network_view_name
  vm_name = var.hostname
  cidr = var.cidr
  tenant_id = var.infoblox_tenant_id
}


resource infoblox_ip_association "this" {
  network_view_name = var.network_view_name
  vm_name = var.hostname
  cidr = var.cidr
  mac_addr = var.mac_addr
  ip_addr = infoblox_ip_allocation.this.ip_addr
  vm_id = var.vm_id
  tenant_id = var.infoblox_tenant_id
}


resource infoblox_a_record "this" {
  network_view_name = var.network_view_name
  vm_name = var.hostname
  cidr = var.cidr
  ip_addr = infoblox_ip_allocation.this.ip_addr
  dns_view = var.dns_view
  zone = var.dns_suffix
  tenant_id = var.infoblox_tenant_id
}