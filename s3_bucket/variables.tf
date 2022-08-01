variable "bucket_name" {
  description = "Please specify a valid S3 Bucket Name that is globally unique"
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9.-]{3,63}$", var.bucket_name))
    error_message = "Must be a valid S3 Bucket Name (^[a-z0-9.-]{3,63}$)"
  }
}
