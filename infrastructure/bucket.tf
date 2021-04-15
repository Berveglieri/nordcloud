module "s3_bucket" {
  source = "./bucket/bucket"

  configuration = var.s3_bucket["bucket"]
}