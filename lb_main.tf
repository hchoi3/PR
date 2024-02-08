resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-name"  # Change this to your desired bucket name
  acl    = "public"

  tags = {
    Name = "ExampleBucket"
  }
}