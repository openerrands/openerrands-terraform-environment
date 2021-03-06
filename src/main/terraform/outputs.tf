output "s3_web_arn" {
  value = aws_s3_bucket.web.arn
}
output "s3_web_bucket" {
  value = aws_s3_bucket.web.bucket
}
output "s3_web_domain" {
  value = cloudflare_record.web.hostname
}
output "s3_web_endpoint" {
  value = aws_s3_bucket.web.website_endpoint
}

output "s3_cdn_arn" {
  value = aws_s3_bucket.cdn.arn
}
output "s3_cdn_bucket" {
  value = aws_s3_bucket.cdn.bucket
}
output "s3_cdn_domain" {
  value = cloudflare_record.cdn.hostname
}
output "s3_cdn_endpoint" {
  value = aws_s3_bucket.cdn.website_endpoint
}

output "s3_app_arn" {
  value = aws_s3_bucket.app.arn
}
output "s3_app_bucket" {
  value = aws_s3_bucket.app.bucket
}
output "s3_app_domain" {
  value = cloudflare_record.app.hostname
}
output "s3_app_endpoint" {
  value = aws_s3_bucket.app.website_endpoint
}

output "api_gateway_arn" {
  value = aws_apigatewayv2_api.http_api.arn
}
output "api_gateway_domain" {
  value = cloudflare_record.api.hostname
}
output "api_gateway_endpoint" {
  value = trimprefix(aws_apigatewayv2_api.http_api.api_endpoint, "https://")
}

output "cloudfront_distribution_arn" {
  value = aws_cognito_user_pool_domain.auth.cloudfront_distribution_arn
}

output "lambda_role_arn" {
  value = aws_iam_role.lambda.arn
}
output "lambda_role_name" {
  value = aws_iam_role.lambda.name
}