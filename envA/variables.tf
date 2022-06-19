variable "project_id" {
    description = "Google Project ID."
    type        = string
}

variable "region" {
    description = "Google Cloud Region"
    type        = string
    default     = "southamerica-east1"
}

variable "bucket_name" {
    description = "GCS Bucket name. Value should be unique."
    type        = list
}

variable "bucket_permissions" {
    description = "GCS Bucket Permissions."
    type        = list
}

variable "users" {
    description = "GCS Bucket Users."
    type        = list
}

variable "storage_class" {
    description = "Google Cloud Bucket Storage Class"
    type        = string
    default     = "STANDARD"
}

variable "uniform_bucket_level" {
    description = "Google Cloud Bucket Uniform Bucket Level Access"
    type        = bool
    default     = true
}