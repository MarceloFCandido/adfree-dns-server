variable "aws_region" {
  type = string
}

variable "aws_profile" {
  type = string
}

variable "lightsail_instance_name" {
  type = string
}

variable "availability_zone" {
  type    = string
  default = "us-east-1"
}

variable "lightsail_instance_key_pair_name" {
  type = string
}

variable "lightsail_instance_blueprint_id" {
  type    = string
  default = "ubuntu_22_04"
}

variable "lightsail_instance_bundle_id" {
  type    = string
  default = "small_2_0"
}
