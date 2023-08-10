resource "aws_cloudwatch_log_group" "cloudtrail" {
}

# resource "aws_cloudwatch_log_group" "cloudtrail_log_group" {
#   name = "/aws/cloudtrail/your-cloudtrail-trail-name"  # Replace 'your-cloudtrail-trail-name' with your CloudTrail trail name
#   retention_in_days = 0  # Change the retention period as needed (in days)
# }

# resource "aws_iam_policy" "CloudWatchLogsPolicy" {
#   name        = var.iam_policy_name
#   path        = var.iam_policy_path
#   description = var.iam_policy_description
#   policy      = data.aws_iam_policy_document.CWL.json
# }

# resource "aws_iam_role" "iam_role" {
#   name = var.iam_role_name
#   name_prefix = var.iam_role_name_prefix
#   assume_role_policy = data.aws_iam_policy_document.EC2.json
#   force_detach_policies = var.iam_role_force_detach_policies
#   path = var.iam_role_path
#   description = var.iam_role_description
#   max_session_duration = var.iam_role_max_session_duration
#   permissions_boundary = var.iam_role_permissions_boundary
#   tags = merge(tomap({
#   "Name" = var.iam_role_name
#   }), var.iam_role_tags)
# }

# resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
#   role = aws_iam_role.iam_role.name
#   policy_arn = aws_iam_policy.CloudWatchLogsPolicy.arn
# }

