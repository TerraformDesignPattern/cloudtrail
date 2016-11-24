output "cloudtrail_cloudwatch_log_group_arn" {
  value = "${aws_cloudwatch_log_group.cloudwatch_log_group.arn}"
}
