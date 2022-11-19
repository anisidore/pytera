variable "s3_bucket" {
    default = "p-enoabasi"
    description = "Bucket Name"
    type = string
}

variable "db_name" {
    default = "terrpy-lock"
    description = "Database Name"
    type = string
}