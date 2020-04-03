# ---------------------------------------------------------------------------------------------------------------------
# INFOBLOX VARIABLES
# Variables used during the creation of resources in vSphere.
# ---------------------------------------------------------------------------------------------------------------------

variable hostname {
  type        = string
  description = "A prefix for the virtual machine name."
}

variable infoblox_tenant_id {
  type = string
  default = "not_applicable"
}

variable cidr {
  type = string
}

variable network_view_name {
  type = string
  default = "default"
}

variable dns_suffix {
  type = string
  default = "humblelab.com"
}

variable dns_view {
  type = string
  default = "default"
}

variable mac_addr {
  type = string
  default = ""
}

variable vm_id {
  type = string
  default = ""
}

