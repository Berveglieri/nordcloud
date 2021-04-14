package bucket

import (
	"fmt"
	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/aws/aws-sdk-go/service/s3"
	"os"
)

func CreateBucket(bucketName string) {

	if os.Getenv("AWS_REGION") == "" {
		fmt.Println("ERROR!\nMissing environment variable AWS_REGION")
		os.Exit(1)
	}

	sess, err := session.NewSession(&aws.Config{
		Region: aws.String(os.Getenv("AWS_REGION"))},
	)

	svc := s3.New(sess)

	_, err = svc.CreateBucket(&s3.CreateBucketInput{
		Bucket: aws.String(bucketName),
	})
	if err != nil {
		fmt.Printf("Unable to create bucket %q, %v", bucketName, err)
	}

	fmt.Printf("Waiting for bucket %q to be created...\n", bucketName)

	err = svc.WaitUntilBucketExists(&s3.HeadBucketInput{
		Bucket: aws.String(bucketName),
	})
	if err != nil {
		fmt.Printf("Error occurred while waiting for bucket to be created, %v", bucketName)
		os.exit(1)
	}

	fmt.Printf("Bucket %q successfully created\n", bucketName)

	input := &s3.PutBucketVersioningInput{
		Bucket:                  &bucketName,
		VersioningConfiguration: &s3.VersioningConfiguration{
			Status:    aws.String("Enabled"),
		},
	}

	_, err = svc.PutBucketVersioning(input)
	if err != nil {
		fmt.Printf("ERROR!\nFailed to enable versioning on bucket %q", bucketName)
	}
}
