# Configure the DNS Provider
provider "dns" {
  update {
    server = "127.0.0.1"
  }
}

module "dns_updater" {

  source            = "../../modules/dns/."
  dns_a_record_ttl  = var.ttl
  dns_a_record_name = var.name
  dns_a_record_addresses = var.addresses
}
