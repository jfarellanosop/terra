/*data "ibm_compute_bare_metal" "bare_metal" {
  hostname    = "arepoc1"
  domain      = "jose-francisco-arellano-s-account.cloud"
  most_recent = true
}*/
/*FUNCIONA PERO NO DESPLIEGA NADA*/
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
  os_reference_code    = "REDHAT_7_64"
  fixed_config_preset  = "1U_6248S_384GB_1X3_8_SED_JBOD"
  tags = [
    "collectd",
    "mesos-master",
  ]
  notes = "note test"
}

  
