variable "s3_bucket" {
    default = "python-learn"
    description = "Bucket Name"
    type = string
}

variable "db_name" {
    default = "terrpy-lock"
    description = "Database Name"
    type = string
}