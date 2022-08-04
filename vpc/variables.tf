variable "cidr_block" {
  description = "Please specify a valid cidr_block"
  type        = string

  validation {
    condition     = can(regex("^[0-9.]{3,63}$", var.cidr_block))
    error_message = "Must be a valid S3 cidr_block (^[0-9.]{3,63}$)"
  }
}
