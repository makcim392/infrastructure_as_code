variable "origin_id" {
  type        = string
  description = "Origin ID"
  default     = ""
}

variable "bucket_domain_name" {
  type        = string
  description = "Bucket domain name"
  default     = ""
}

variable "cdn_price_class" {
  type        = string
  description = "CDN price class"
  default     = "PriceClass_200"
}

variable "cdn_tags" {
  type        = map(string)
  description = "CDN tags"
  default     = {}
}
