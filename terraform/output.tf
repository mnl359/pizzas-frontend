output "bucket_name" {
  description = "Bucket name"
  value       = aws_s3_bucket.pizza-application.bucket
}