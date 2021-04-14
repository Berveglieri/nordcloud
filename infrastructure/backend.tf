terraform {
  backend "s3" {
    bucket = "nordcloud-challenge-terraform-state"
    key = "terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "terraform_state_lock"
  }
}