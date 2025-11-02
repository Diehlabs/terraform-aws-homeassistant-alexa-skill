provider "aws" {
  region = "us-east-1"
}

module "ha_alexa_skill" {
  source = "../.." # use the following line to use directly from GitHub
  # source = "git::https://github.com/Diehlabs/terraform-aws-homeassistant-alexa-skill.git?ref=master"

  ha_base_url = "https://ha.your-domain.com"
  tags = {
    region      = "us-east-1"
    environment = "prod"
  }
}

output "ha_alexa_skill_lambda_arn" {
  description = "The ARN of the Home Assistant Alexa Skill Lambda function. This is needed by your custom Alexa Skill configuration."
  value       = module.ha_alexa_skill.ha_alexa_skill_lambda_arn
}
