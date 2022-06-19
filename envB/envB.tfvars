# Set Values to Specific Environment

project_id  = "teste-do-novinho"

bucket_name = [
    "envA-bucket01",
    "envA-bucket02",
    "envA-bucket03"
]

bucket_permissions = [
    "roles/storage.legacyBucketWriter",
]

users = [
    "user:brunonovo1803@gmail.com" # Needs Write/Read Permission in all Buckets except Bucket4 and Bucket7
]

uniform_bucket_level = false