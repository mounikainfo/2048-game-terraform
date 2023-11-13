# configure aws provider
provider "aws" {
  region  = var.region
  profile = "mouni"
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "game-mouni-terraform"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    profile        = "mouni"
    dynamodb_table = "game-state-lock-dynamodb"
  }
}
