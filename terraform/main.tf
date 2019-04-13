provider "google"{
credentials="${file("service.json")}"
project="gcp-mentorship"
region="us-east1"
}

