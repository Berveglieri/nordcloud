resource "aws_s3_bucket_object" "app_data" {
  bucket = module.s3_bucket.bucket_name
  key    = "app.zip"
  source = "./deployment/app.zip"
  etag = filemd5("./deployment/app.zip")
}