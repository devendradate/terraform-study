resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

locals {
  zip_location = "zip-files/welcome.zip"
}

data "archive_file" "init" {
  type        = "zip"
  source_file = "welcome.py"
  output_path = local.zip_location
}

resource "aws_lambda_function" "test_lambda" {
  filename      = local.zip_location
  function_name = "lambda_function_name"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "welcome.hello"


  runtime = "python3.7"

}

# Below is important  to attach cloudwatch event rule in lambda console under trigger

resource "aws_lambda_permission" "allow_cloudwatch_to_call_lambda" {
    statement_id = "AllowExecutionFromCloudWatch"
    action = "lambda:InvokeFunction"
    function_name = aws_lambda_function.test_lambda.function_name
    principal = "events.amazonaws.com"
    source_arn = aws_cloudwatch_event_rule.console.arn
}