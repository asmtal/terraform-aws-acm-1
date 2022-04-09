<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alternative_names"></a> [alternative\_names](#input\_alternative\_names) | List of alternative domain names i.e. *.foo.bar | `list(string)` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | Domain to create ACM certificate for i.e. foo.bar | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Zone ID of the assigned Route53 Zone | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the certificate |
| <a name="output_dns_entries"></a> [dns\_entries](#output\_dns\_entries) | Map of the all issued domain names => {name, record, type} |
| <a name="output_domain"></a> [domain](#output\_domain) | Domain name of the certificate |
| <a name="output_id"></a> [id](#output\_id) | ID of the certificate |
| <a name="output_status"></a> [status](#output\_status) | Status of the certificate |
| <a name="output_validation_method"></a> [validation\_method](#output\_validation\_method) | Validation method of the certificate |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-disable -->
<!-- prettier-ignore-end -->
