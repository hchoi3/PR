
data "aws_iam_policy_document" "CWL" {
  version = "2012-10-17"
  statement {
    sid = "AWSCloudTrailCreateLogStream"
    effect = "Allow"

    actions = [
      "logs:CreateLogStream",
    ]

    resources = ["arnofcloudwatchloggroups"]
    
    }

  statement {
    sid = "AWSCloudTrailPutLogEvents"
    effect = "Allow"

    actions = ["logs:PutLogEvents"]
    resources = ["arnofcloudwatchloggroups"]
  }
  }