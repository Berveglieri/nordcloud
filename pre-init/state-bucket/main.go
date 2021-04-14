package main

import (
	"flag"
	"github.com/nordcloud/challenge/s3/bucket"
)

var (
	bucketName string
)

func main() {

	flag.StringVar(&bucketName,"bucket","","please specify the bucket name to store the terraform state")
	flag.Parse()

	if bucketName != "" {
		bucket.CreateBucket(bucketName)
	} else {
		flag.Usage()
	}
}


