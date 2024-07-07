variable "region" {
  description = "The AWS region to create the S3 bucket in."
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "versioning" {
  description = "Enable versioning for the S3 bucket."
  type        = bool
  default     = false
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm to use (e.g., AES256, aws:kms)."
  type        = string
  default     = "AES256"
}

variable "policy" {
  description = "The JSON policy for the S3 bucket."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}
