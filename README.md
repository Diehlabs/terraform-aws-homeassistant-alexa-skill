# terraform-aws-homeassistant-alexa-skill

This module will manage the AWS resources required for a custom Alexa Smart Home skill specifically for use with Home Assistant.

[More information here.](https://www.home-assistant.io/integrations/alexa.smart_home/)

Home Assistant must have `alexa: smart_home:` configured, and the Lambda posts to `<BASE_URL>/api/alexa/smart_home` accordingly. Do not point this at `/api/alexa` — that's the separate, legacy `alexa.intent` custom-skill endpoint and won't understand Smart Home directives.

Note that you must add the trigger configuration for the lambda manually at this time.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_archive"></a> [archive](#requirement\_archive) | >= 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | 2.7.1 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.19.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.ha_alexa_skill_lambda_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ha_alexa_skill_lambda_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lambda_function.ha_alexa_skill_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [archive_file.ha_alexa_skill_lambda](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |
| [aws_iam_policy.AWSLambdaBasicExecutionRole](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ha_base_url"></a> [ha\_base\_url](#input\_ha\_base\_url) | The base URL for the Home Assistant instance.<br/>ex: `https://ha.your-domain.com` | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ha_alexa_skill_lambda_arn"></a> [ha\_alexa\_skill\_lambda\_arn](#output\_ha\_alexa\_skill\_lambda\_arn) | The ARN of the Home Assistant Alexa Skill Lambda function.<br/>This is needed by your custom Alexa Skill configuration. |
<!-- END_TF_DOCS -->
