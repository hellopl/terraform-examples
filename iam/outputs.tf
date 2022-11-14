output "iam_role_name" {
  description = "Name of the IAM role"
  value       = aws_iam_role.this.name
}

output "iam_role_unique_id" {
  description = "The globally unique identifier for the IAM role"
  value       = aws_iam_role.this.unique_id
}

output "iam_role_arn" {
  description = "The Amazon Resource Name (ARN) of the IAM role"
  value       = aws_iam_role.this.arn
}
