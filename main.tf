data "ibm_compute_bare_metal" "bare_metal" {
  hostname    = "sourcepoc1"
  domain      = "sopra.cloud"
  most_recent = true
}
/*
resource "ibm_compute_bare_metal" "hourly-bm1" {
  hostname             = "hourly-bm1"
  domain               = "sopra.cloud"
  os_reference_code    = "REDHAT_7_64"
  datacenter           = "ams03"
  network_speed        = 100   # Optional
  hourly_billing       = true  # Optional
  private_network_only = false # Optional
  fixed_config_preset  = "S1270V6_16GB_1X800GB_SATA_NORAID"

  tags = [
    "collectd",
    "mesos-master",
  ]
  notes = "note test"
}
*/
