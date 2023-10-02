output "bucket-region" {
  value = aws_s3_bucket.my-bucket.region
}

output "bucket-tags" {
    value = aws_s3_bucket.my-bucket.tags_all
}

output "hosted-zone-id" {
    value = aws_s3_bucket.my-bucket.hosted_zone_id
}