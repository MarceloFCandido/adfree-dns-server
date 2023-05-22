resource "aws_lightsail_instance" "server" {
  name              = var.lightsail_instance_name
  availability_zone = var.availability_zone
  key_pair_name     = var.lightsail_instance_key_pair_name

  blueprint_id      = var.lightsail_instance_blueprint_id
  bundle_id         = var.lightsail_instance_bundle_id

  ip_address_type   = "dualstack"
}
