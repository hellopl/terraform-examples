locals {
  accounts = [
    for account in var.accounts : format("arn:aws:iam::%s:root", account)
  ]
}

resource "aws_iam_role" "this" {
  name = var.name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  max_session_duration = 43200 # in seconds between 3600 and 43200
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = local.accounts
    }
  }
}

## add AdministratorAccess
resource "aws_iam_policy_attachment" "administrator_access" {
  name       = "${var.name}-attachment"
  roles      = [aws_iam_role.this.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
