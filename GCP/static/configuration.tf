provider "google" {
  # Credentials are in env vars AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
    project     = "bosh-181620"
    region      = "us-west"
}

terraform {
  backend "gcs" {
    bucket  = "bosh-terraform" 
    path    = "terraform.tfstate"
  }
}

