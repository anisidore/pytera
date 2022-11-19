variable "s3_bucket" {
    default = "python-enoabasi"
    description = "Bucket Name"
    type = string
}

variable "db_name" {
    default = "terrpy-lock"
    description = "Database Name"
    type = string
}