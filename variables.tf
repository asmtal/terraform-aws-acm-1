variable "domain" {
  type        = string
  description = "Domain to create ACM certificate for i.e. foo.bar"
}
variable "alternative_names" {
  type        = list(string)
  description = "List of alternative domain names i.e. *.foo.bar"
}

variable "zone_id" {
  type        = string
  default     = ""
  description = "Zone ID of the assigned Route53 Zone"
}
