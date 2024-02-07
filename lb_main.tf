resource "aws_iam_access_key" "example" {
  user = "example-user"
}

output "access_key_secret" {
  value = aws_iam_access_key.example.secret
}