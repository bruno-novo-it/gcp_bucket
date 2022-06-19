
# Not Public Buckets
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
}

resource "google_storage_bucket_iam_member" "read_write" {
  for_each = toset(var.bucket_name)

  bucket = lower(each.value)
  role   = var.bucket_permissions[0]
  member = var.users[0]
  depends_on = [google_storage_bucket.bucket]
}


resource "google_storage_bucket_iam_member" "read" {
  for_each = toset(var.bucket_name)

  bucket = lower(each.value)
  role   = var.bucket_permissions[1]
  member = var.users[1]
  depends_on = [google_storage_bucket.bucket]
}
