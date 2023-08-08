locals {
  vpc_flowlog_instances = {
    for vpc_id in data.aws_vpcs.current.ids :
    vpc_id => module.vpc_flowlog[vpc_id]
  }
}

output "vpc_flowlog_instances" {
  value = local.vpc_flowlog_instances
}