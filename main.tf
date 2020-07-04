/*data "ibm_compute_bare_metal" "bare_metal" {
  hostname    = "arepoc1"
  domain      = "jose-francisco-arellano-s-account.cloud"
  most_recent = true
}*/
 
resource "ibm_compute_bare_metal" "test-terraform" {
  hostname             = "test-poc_terraform"
  ipv6_enabled         = false
  domain               = "jose-francisco-arellano-s-account.cloud"
  memory               = 32
  os_reference_code    = "REDHAT_7_64"
  public_bandwidth     = 0  
  redundant_network      = true
  redundant_power_supply = true
  datacenter           = "ams03"
  network_speed        = 10000   # Optional
  hourly_billing       = true  # Optional
  private_network_only = false # Optional
  fixed_config_preset  = "1U_6248S_384GB_1X3_8_SED_JBOD"
  unbonded_network     = false  
  tags = [
    "collectd",
    "mesos-master",
  ]
  notes = "note test"
}

