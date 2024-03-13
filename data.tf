data "oci_identity_availability_domain" "main" {
  compartment_id = var.oc_compartment_id
  ad_number      = 1
}
