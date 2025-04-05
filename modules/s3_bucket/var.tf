variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "versioning" {
  type        = string
  description = "Versioning status for the bucket. Valid values: 'Enabled' or 'Suspended'"
  default     = "Disabled"

  validation {
    condition     = contains(["Enabled", "Suspended", "Disabled"], var.versioning)
    error_message = "Versioning must be either 'Enabled', 'Disabled' or 'Suspended'."
  }
}

variable "tags" {
  type        = map(string)
  description = "Common tags for all resources"
  default     = {}
}