# Configure the DNS Provider
provider "dns" {
  update {
    server = "127.0.0.1"
  }
}

module "dns_updater" {

  source            = "../../modules/dns/."
  dns_a_record_name = "www"
  dns_a_record_addresses = ["192.168.100.1"]
  dns_a_record_ttl = 300
}

output "dns_a_record_id" {
  value = module.dns_updater.dns_a_record_id
}