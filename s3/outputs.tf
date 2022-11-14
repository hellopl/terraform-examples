output "s3_bucket_name" {
  description = "The alias of the S3 bucket"
  value       = aws_s3_bucket.this.name
}

output "s3_bucket_id" {
  description = "The globally unique identifier for the S3 bucket"
  value       = aws_s3_bucket.this.bucket_id
}

output "s3_bucket_arn" {
  description = "The Amazon Resource Name (ARN) of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}
