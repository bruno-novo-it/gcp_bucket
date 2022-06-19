# Set Values to Specific Environment

project_id  = "project-2"

bucket_name = [
    "envB-bucket01",
    "envB-bucket02",
    "envB-bucket03",
    "envB-bucket04",
    "envB-bucket05",
    "envB-bucket06",
    "envB-bucket07",
    "envB-bucket08",
    "envB-bucket09",
    "envB-bucket10"
]

bucket_permissions = [
    "roles/storage.legacyBucketWriter",
]

users = [
    "user:brunonovo1803@gmail.com" # Needs Write/Read Permission in all Buckets except Bucket4 and Bucket7
]

uniform_bucket_level = false