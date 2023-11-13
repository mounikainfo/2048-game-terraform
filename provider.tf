# configure aws provider
provider "aws" {
  region  = var.region
  profile = var.profile
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "game-mouni-terraform"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    profile        = "mounika"
    dynamodb_table = "game-state-lock-dynamodb"
  }
}
