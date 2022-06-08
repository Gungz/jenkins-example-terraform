resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-212316051817"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "a" {
  bucket = "our-tf-test-bucket-212316051817"

  tags = {
    Name        = "Our bucket"
    Environment = "Dev"
  }
}
