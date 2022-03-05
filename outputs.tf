output "arn" {
  value       = aws_acm_certificate.this.arn
  description = "ARN of the certificate"
}
output "id" {
  value       = aws_acm_certificate.this.id
  description = "ID of the certificate"

}
output "domain" {
  value       = aws_acm_certificate.this.domain_name
  description = "Domain name of the certificate"

}
output "validation_method" {
  value       = aws_acm_certificate.this.validation_method
  description = "Validation method of the certificate"

}
output "status" {
  value       = aws_acm_certificate.this.status
  description = "Status of the certificate"

}

output "dns_entries" {
  value = {
    for dvo in aws_acm_certificate.this.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }
  description = "Map of the all issued domain names => {name, record, type}"
}
