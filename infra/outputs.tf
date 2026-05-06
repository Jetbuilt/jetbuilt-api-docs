output "site_endpoint" {
  description = "S3 website endpoint — use this as the Cloudflare origin"
  value       = aws_s3_bucket_website_configuration.site.website_endpoint
}
