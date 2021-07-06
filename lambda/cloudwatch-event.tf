resource "aws_cloudwatch_event_rule" "console" {
  name        = "test-event"
  schedule_expression = "rate(5 minutes)"
}

resource "aws_cloudwatch_event_target" "example" {
  arn  = aws_lambda_function.test_lambda.arn
  rule = aws_cloudwatch_event_rule.console.id
}