/*data "ibm_compute_bare_metal" "bare_metal" {
  hostname    = "sourcepoc1"
  domain      = "sopra.cloud"
  most_recent = true
}*/
resource "ibm_compute_bare_metal" "test-terraform" {
  hostname             = "test-poc_terraform"
  domain               = ""
  os_reference_code    = "REDHAT_7_64"
  datacenter           = "ams03"
  network_speed        = 100   # Optional
  hourly_billing       = true  # Optional
  private_network_only = false # Optional
  fixed_config_preset  = "1U_6248S_384GB_1X3_8_SED_JBOD"
  tags = [
    "collectd",
    "mesos-master",
  ]
  notes = "note test"
}
