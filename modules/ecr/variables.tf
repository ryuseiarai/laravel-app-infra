variable "name" {
  type        = string
  description = "ecr name"
}

variable "holding_count" {
  type        = number
  default     = 10
  description = "ecr holding image count"
}