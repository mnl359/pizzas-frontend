output "website_endpoint" {
  value = "${var.s3_name}.s3-website-${var.aws_region}.amazonaws.com"
}