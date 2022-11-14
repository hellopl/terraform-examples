variable "region" {
  description = "AWS Region"
  type        = string
}

variable "name" {
  description = "A name of the S3 bucket"
  type        = string
}

## optional
variable "shared_path" {
  description = "The shared path in the S3 bucket"
  type        = string
  default     = "shared/*"
}

#variable "accounts" {
#  description = "AWS accounts to share the S3 share"
#  type        = list(string)
#  default     = []
#}
