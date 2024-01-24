variable "oc_tenancy_id" {
  description = "Oracle tenancy ID"
  sensitive   = true
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "oc_compartment_id" {
  description = "Root compartment ID" 
  sensitive   = true
  type        = string
}
