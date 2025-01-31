terraform {
  backend "gcs" {
    bucket = "austin-test-harness-bucket"  # Replace with your bucket name
    prefix = "terraform"       # Optional: path inside the bucket to store state
  }
}

resource "local_file" "file" {
  content  = "Hello, World!"
  filename = "${path.module}/hi.txt"
}
