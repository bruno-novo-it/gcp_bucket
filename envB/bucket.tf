
# Public Buckets
resource "google_storage_bucket" "bucket" {
  for_each = toset(var.bucket_name)

  name          = lower(each.value)
  location      = var.region
  force_destroy = true
  storage_class = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level
}

# Set Public Buckets Permissions
resource "google_storage_default_object_access_control" "public_access_rule" {
  for_each = toset(var.bucket_name)

  bucket  = lower(each.value)
  role    = "READER"
  entity  = "allUsers"
  depends_on = [google_storage_bucket.bucket]
}

# Read/Write Permission for the Bucket
resource "google_storage_bucket_iam_member" "read_write" {
  for_each = {
    for key in var.bucket_name:
      key => var.bucket_name
    if key != "envB-bucket04" && key != "envB-bucket07"
  }

  bucket = lower(each.key)
  role   = var.bucket_permissions[0]
  member = var.users[0]
  depends_on = [google_storage_bucket.bucket]
}
