variable "s3_bucket" {
    default = "pynan-enoabasi"
    description = "Bucket Name"
    type = string
}

variable "db_name" {
    default = "terpyn-lock"
    description = "Database Name"
    type = string
}