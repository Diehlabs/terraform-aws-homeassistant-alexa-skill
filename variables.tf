variable "ha_base_url" {
  description = <<EOT
The base URL for the Home Assistant instance.
ex: `https://ha.your-domain.com`
EOT
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {}
}
