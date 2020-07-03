/*data "ibm_compute_bare_metal" "bare_metal" {
  hostname    = "arepoc1"
  domain      = "jose-francisco-arellano-s-account.cloud"
  most_recent = true
}*/
resource "ibm_compute_bare_metal" "test-terraform" {
  hostname             = "test-poc_terraform"
  domain               = "jose-francisco-arellano-s-account.cloud"
  memoryCapacity       = 32
  #os_reference_code    = "REDHAT_7_64"
  os_reference_code    = {
    "manufacturerLicenseInstance": "D588C989-0334-4FAD-993E-D37807B62FF7",
    "softwareLicense": {
        "id": 17796,
        "softwareDescription": {
            "manufacturer": "Redhat",
            "name": "EL for SAP Business Applications",
            "referenceCode": "REDHAT_7_64",
            "version": "7.7-64 for SAP Business Applications"
        },
       "softwareDescriptionId": 2640
    }
  }  
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
