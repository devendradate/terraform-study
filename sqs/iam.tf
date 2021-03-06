data "aws_iam_policy_document" "consumer" {
  statement {
    effect    = "Allow"
    resources = [aws_sqs_queue.terraform_queue.arn]

    actions = [
      "sqs:GetQueueAttributes",
      "sqs:GetQueueUrl",
      "sqs:ReceiveMessage",
      "sqs:DeleteMessage*",
      "sqs:PurgeQueue",
      "sqs:ChangeMessageVisibility*"
    ]
  }
}

data "aws_iam_policy_document" "pusher" {
  statement {
    effect    = "Allow"
    resources = [aws_sqs_queue.terraform_queue.arn]

    actions = [
      "sqs:GetQueueAttributes",
      "sqs:GetQueueUrl",
      "sqs:SendMessage*"
    ]
  }
}

resource "aws_iam_policy" "consumer" {
  name   = "sqs-${var.sqs_name}-consumer"
  policy = data.aws_iam_policy_document.consumer.json
}

resource "aws_iam_policy" "pusher" {
  name   = "sqs-${var.sqs_name}-pusher"
  policy = data.aws_iam_policy_document.pusher.json
}
