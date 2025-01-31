terraform {
  backend "gcs" {
    bucket = "austin-test-harness-bucket"   # Replace with your bucket name
    prefix = "terraform"        # Optional: path inside the bucket to store state
  }
}
