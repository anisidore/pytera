variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "cluster_name" {
    default = "portfolio"
    description = "Clustername"
    type = string
}

variable "db_name" {
    default = "terrpy-lock"
    description = "Database Name"
    type = string
}