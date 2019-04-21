terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-test-up-and-running-state"
    dynamodb_table = "terraform-state-lock-dynamo"
    region         = "us-east-1"
    key            = "terraform.tfstate"
  }
}
