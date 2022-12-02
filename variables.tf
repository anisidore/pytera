variable "s3_bucket" {
    default = "pynan-enoabasi"
    description = "Bucket Name"
    type = string
}

variable "db_name" {
    default = "enoabasi-lock"
    description = "Database Name"
    type = string
}