resource "oci_identity_compartment" "main" {
  compartment_id = var.oc_compartment_id
  description    = var.project_name
  name           = var.project_name
}

resource "oci_core_vcn" "main" {
  compartment_id = oci_identity_compartment.main.id

  cidr_blocks = [var.vcn_cidr_block]
}

resource "oci_core_subnet" "main" {
  count = var.number_of_servers

  cidr_block = cidrsubnet(var.vcn_cidr_block, 4, count.index)
  compartment_id = oci_identity_compartment.main.id
  vcn_id = oci_core_vcn.main.id
}

resource "oci_core_instance" "main" {
  count = var.number_of_servers

  availability_domain = data.oci_identity_availability_domain.main.name
  compartment_id      = var.oc_compartment_id
  shape               = "VM.Standard.E2.1.Micro"

  create_vnic_details {
    subnet_id = oci_core_subnet.main[count.index].id
  }
}
