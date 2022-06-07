terraform {
  required_version = "1.0.0"

  backend "s3" {
    bucket         = "terraform-s3-846594335872"
    key            = "ApplDevInfra"
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "terraform-state"
  }
}
