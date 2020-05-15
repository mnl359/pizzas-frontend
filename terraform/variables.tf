variable "profile" {
  description = "Profile for Terraform"
  type        = string
  default     = "personal"
}

variable "aws_region" {
  description = "Principal region: North Virginia"
  type        = string
  default     = "us-east-2"
}


variable "tags" {
  description = "Description tags for resources"
  type        = map(string)
  default     = {"owner":"manuela.carrasco", 
                 "project":"Rampup2020",
                 "provisioner":"Terraform"}
}

# Bucket variables
variable "s3_name" {
  description = "Amazon S3 name for frontend"
  type        = string
  default     = "rampup2020-pizza-application2"
}
