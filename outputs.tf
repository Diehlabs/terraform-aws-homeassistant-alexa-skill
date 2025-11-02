output "ha_alexa_skill_lambda_arn" {
  description = <<EOT
The ARN of the Home Assistant Alexa Skill Lambda function.
This is needed by your custom Alexa Skill configuration.
EOT
  value       = aws_lambda_function.ha_alexa_skill_lambda.arn
}
