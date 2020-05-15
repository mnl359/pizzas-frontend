# Policy for Frontend S3 bucket
data "aws_iam_policy_document" "front_policy" {
  statement {
      sid = "bucket-policy"
      effect = "Allow"
      principals {
          type = "*"
          identifiers = ["*"]
      }
      actions = [
          "s3:GetObject"
      ]
      resources = [
          "arn:aws:s3:::${var.s3_name}/*"
      ]
  }
}

# Bucket S3 for Frontend
resource "aws_s3_bucket" "pizza-application" {
  bucket = var.s3_name
  region = var.aws_region
  acl    = "public-read"
  tags   = var.tags

  policy = data.aws_iam_policy_document.front_policy.json
  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}