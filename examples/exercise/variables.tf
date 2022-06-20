
variable "ttl" {
  description = "The TTL of the record set."
  type        = number
}

variable "name" {
  description = "The name of the record set. The zone argument will be appended to this value to create the full record path."
  type        = string
}

variable "addresses" {
  description = "The IPv4 addresses of the A record set"
  type        = list(string)
}

