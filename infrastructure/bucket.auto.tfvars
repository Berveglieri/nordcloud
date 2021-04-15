s3_bucket = {
  bucket = {
    production = {
      bucket = "notejam-bucket-app"
      acl = "private"
    }
    development = {}
    testing = {}
  }
}