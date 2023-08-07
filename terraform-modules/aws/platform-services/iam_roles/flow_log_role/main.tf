resource "aws_iam_role" "flow_log_role" {
  name = var.iam_role_name
  assume_role_policy = data.aws_iam_policy_document.vpc_flow_assume_role_policy.json
}


resource "aws_iam_role_policy" "flow_log_role_policy" {
  name = var.iam_role_policy_name
  role   = aws_iam_role.flow_log_role.id
  policy = data.aws_iam_policy_document.flow_log_role_policy.json
}