module "s3_bucket" {
  source = "../module/bucket"

  acl = local.acl
  bucket_name = local.bucket
}