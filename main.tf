/*data "ibm_compute_bare_metal" "bare_metal" {
  hostname    = "arepoc1"
  domain      = "jose-francisco-arellano-s-account.cloud"
  most_recent = true
}*/
  /*
  Antiguo
resource "ibm_compute_bare_metal" "test-terraform" {
  datacenter           = "ams03"
  domain               = "jose-francisco-arellano-s-account.cloud"
  hostname             = "test-poc_terraform"
  hourly_billing       = true  # Optional 
  ipv6_enabled         = false
  memory               = 32
  network_speed        = 1000   # Optional
  private_network_only = false # Optional
  redundant_network      = true
  redundant_power_supply = true
  unbonded_network       = false
  fixed_config_preset  = "1U_6248S_384GB_1X3_8_SED_JBOD"
  tags = [
    "collectd",
    "mesos-master",
  ]
  notes = "note test"
  os_reference_code    = "REDHAT_7_64"
}
*/
resource "ibm_compute_bare_metal" "test-terraform" {
 datacenter              = "ams03"
 domain                  = "jose-francisco-arellano-s-account.cloud"
 global_identifier       = "07540a12-740d-4b85-b460-bec217de221f"
 hostname                = "createwithterraform"
 hourly_billing          = true
 ipv6_enabled            = false
 memory                  = 32
 most_recent             = true
 network_speed           = 10000
 os_reference_code       = "REDHAT_7_64"
 private_network_only    = false
 public_bandwidth        = 0
 redundant_network       = true
 redundant_power_supply  = true
 unbonded_network        = false
}
