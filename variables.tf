variable "number_of_servers" {
  description = "Number of DNS servers to create"
  type        = number
}

variable "oc_compartment_id" {
  description = "Root compartment ID" 
  sensitive   = true
  type        = string
}

variable "oc_tenancy_id" {
  description = "Oracle tenancy ID"
  sensitive   = true
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "vcn_cidr_block" {
  default     = "10.0.0.0/16"
  description = "CIDR block for DNS server VCN"
  type        = string  
}
