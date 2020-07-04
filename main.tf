data "ibm_compute_bare_metal" "bare_metal" {
  hostname    = "arepoc1"
  domain      = "jose-francisco-arellano-s-account.cloud"
  most_recent = true
}
 
resource "ibm_compute_bare_metal" "test-terraform" {
  hostname             = "test-poc_terraform"
  file_storage_ids     = ""
  block_storage_ids    = ""
  ipv6_enabled         = false
  domain               = "jose-francisco-arellano-s-account.cloud"
  memory               = 32
  os_reference_code    = "REDHAT_7_64"
  private_ipv4_address = "10.137.83.155"
  public_ipv4_address  = "169.50.135.101"  
  public_bandwidth     = 0  
  private_subnet       = 1282439
  private_vlan_id      = 2904384  
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

