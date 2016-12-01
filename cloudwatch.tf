// Create Cloudwatch Log Group
resource "aws_cloudwatch_log_group" "cloudwatch_log_group" {
  name = "${var.aws_account}-cloudtrail"
}

// Create Clouwatch Log Stream
resource "aws_cloudwatch_log_stream" "cloudwatch_log_stream" {
  name           = "${var.aws_account}-cloudtrail-cloudwatch-log-stream"
  log_group_name = "${aws_cloudwatch_log_group.cloudwatch_log_group.name}"
}
