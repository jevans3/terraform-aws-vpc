variable "namespace" {
  description = "Namespace (e.g. `cp` or `cloudposse`)"
  type        = string
  default     = "hcat"
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  type        = string
  default     = "dev"
}

variable "name" {
  description = "Name  (e.g. `app` or `cluster`)"
  type        = string
  default     = "hcatterravpc" 
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "jevans added 10 12 19 to debug Terra deployment"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}

variable "cidr_block" {
  type        = string
  description = "CIDR for the VPC"
  default     = "10.50.50.0/24"
}

variable "instance_tenancy" {
  type        = string
  description = "A tenancy option for instances launched into the VPC"
  default     = "default"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "A boolean flag to enable/disable DNS hostnames in the VPC"
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "A boolean flag to enable/disable DNS support in the VPC"
  default     = true
}

variable "enable_classiclink" {
  type        = bool
  description = "A boolean flag to enable/disable ClassicLink for the VPC"
  default     = false
}

variable "enable_classiclink_dns_support" {
  type        = bool
  description = "A boolean flag to enable/disable ClassicLink DNS Support for the VPC"
  default     = false
}

