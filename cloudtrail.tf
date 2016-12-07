// Create Cloutrail
resource "aws_cloudtrail" "cloudtrail" {
  name                       = "${var.aws_account}-cloudtrail"
  cloud_watch_logs_group_arn = "${aws_cloudwatch_log_group.cloudwatch_log_group.arn}"
  cloud_watch_logs_role_arn  = "${aws_iam_role.iam_role.arn}"
  is_multi_region_trail      = "${var.is_multi_region_trail}"
  s3_bucket_name             = "${var.aws_account}"
  s3_key_prefix              = "cloudtrail"
}
