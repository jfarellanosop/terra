output "so" {
  value = "http://${ibm_compute_bare_metal.bare_metal.os_reference_code}"
}

output "id" {
  value = "http://${ibm_compute_bare_metal.bare_metal.id}"
}
