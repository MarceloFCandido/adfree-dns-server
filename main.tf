resource "oci_identity_compartment" "main" {
  #Required
  compartment_id = var.oc_compartment_id
  description    = var.project_name
  name           = var.project_name
}

resource "oci_core_vcn" "main" {
  compartment_id = oci_identity_compartment.main.id
}
