/*resource "ibm_compute_bare_metal" "test-terraform" {
 datacenter              = "ams03"
 domain                  = "jose-francisco-arellano-s-account.cloud"
 hostname                = "createwithterraform"
 hourly_billing          = true
 ipv6_enabled            = false
 memory                  = 32
 network_speed           = 100
 os_reference_code       = "REDHAT_7_64"
 private_network_only    = false
 public_bandwidth        = 0
 redundant_network       = true
 redundant_power_supply  = true
 unbonded_network        = false
 fixed_config_preset     = "1U_6248S_384GB_1X3_8_SED_JBOD"
}
*/
 data"ibm_compute_bare_metal" "test-terraform" {
  hostname  = "ase"
  domain    = "jose-francisco-arellano-s-account.cloud"
  most_recent = true
  }
