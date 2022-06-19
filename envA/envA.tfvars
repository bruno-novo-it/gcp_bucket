# Set Values to Specific Environment

project_id  = "project-1"

bucket_name = [
    "envA-bucket01",
    "envA-bucket02",
    "envA-bucket03"
]

bucket_permissions = [
    "roles/storage.legacyBucketWriter",
    "roles/storage.legacyBucketReader"
]

users = [
    "user:brunonovo1802@gmail.com", #Need to have R/W Permission in all Buckets and added to the acount
    "user:brunonovo1803@gmail.com" # User already in the account and needs Read Permission in all Buckets
]

uniform_bucket_level = true