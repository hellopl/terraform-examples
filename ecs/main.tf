resource "aws_ecs" "this" {
  name = var.name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  max_session_duration = 43200 # in seconds between 3600 and 43200 
}