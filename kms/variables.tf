variable "region" {
  description = "AWS Region"
  type        = string
}

variable "name" {
  description = "A name of the KMS key"
  type        = string
}

## optional
variable "accounts" {
  description = "AWS accounts to share the KMS key"
  type        = list(string)
  default     = []
}
