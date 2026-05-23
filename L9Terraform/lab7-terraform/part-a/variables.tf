variable "project_name" {
  type = string
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "enable_versioning" {
  type    = bool
  default = false
}

variable "resource_tags" {
  type = map(string)

  default = {
    ManagedBy = "Terraform"
  }
}
