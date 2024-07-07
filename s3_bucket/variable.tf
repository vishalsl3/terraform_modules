variable "region" {
  description = "The AWS region where the bucket will be created."
  type        = string
  default     = "eu-central-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket."
  type        = bool
  default     = false
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm to use. Valid values are AES256 and aws:kms."
  type        = string
  default     = "AES256"
}

variable "tags" {
  description = "A map of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}
