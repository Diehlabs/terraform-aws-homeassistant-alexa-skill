# Package the Lambda function code
data "archive_file" "ha_alexa_skill_lambda" {
  type        = "zip"
  source_file = "${path.module}/lambda/function.py"
  output_path = "${path.module}/lambda/function.zip"
}

# Lambda function
resource "aws_lambda_function" "ha_alexa_skill_lambda" {
  filename         = data.archive_file.ha_alexa_skill_lambda.output_path
  function_name    = "HomeAssistantAlexaSkillFunction"
  role             = aws_iam_role.ha_alexa_skill_lambda_role.arn
  handler          = "function.lambda_handler"
  source_code_hash = data.archive_file.ha_alexa_skill_lambda.output_base64sha256

  runtime = "python3.13"

  environment {
    variables = {
      BASE_URL = var.ha_base_url
      DEBUG    = "True"
    }
  }

  tags = var.tags
}
