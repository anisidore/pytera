variable "s3_bucket" {
    default = "python-enoabasiii"
    description = "Bucket Name"
    type = string
}

variable "db_name" {
    default = "terrpy-lock"
    description = "Database Name"
    type = string
}