data "aws_caller_identity" "current" {}

resource "aws_cloudwatch_log_group" "vpc_flow_log_group" {
  name = "/aws/vpcflowlogs/${data.aws_caller_identity.current.id}/${var.environment}/vpc/${var.vpc_id}/${var.vpc_flow_log_group_name}"
  retention_in_days = 0
  tags = var.cloudwatch_log_tags
}

resource "aws_flow_log" "vpc_flow_log" {
  log_destination      = aws_cloudwatch_log_group.vpc_flow_log_group.arn
  log_destination_type = var.vpc_log_destination_type
  traffic_type         = var.vpc_traffic_type
  vpc_id               = var.vpc_id

  iam_role_arn = var.flow_log_role_arn

  tags = var.vpc_flow_log_tags

}