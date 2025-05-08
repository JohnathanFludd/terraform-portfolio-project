
terraform {
  backend "s3" {
    bucket = "fludd-terraform-state"
    key    = "global/s3/terraform.tfstate"
    dynamodb_table = "terraform-web-site"
    region = "us-east-1"
  }
}
