package dynamo

import (
	"fmt"
	"github.com/aws/aws-sdk-go/aws"
	"github.com/aws/aws-sdk-go/aws/session"
	"github.com/aws/aws-sdk-go/service/dynamodb"
	"os"
)

func CreateTable(tableName string)  {

	if os.Getenv("AWS_REGION") == "" {
		fmt.Println("ERROR!\nMissing environment variable AWS_REGION")
		os.Exit(1)
	}

	sess, err := session.NewSession(&aws.Config{
		Region: aws.String(os.Getenv("AWS_REGION"))},
	)
	if err != nil {
		fmt.Printf("Failed to initialize dynamo session %v", err)
	}

	svc := dynamodb.New(sess)

	_, err = svc.CreateTable(&dynamodb.CreateTableInput{
		AttributeDefinitions: 	[]*dynamodb.AttributeDefinition{
			{
				AttributeName: aws.String("LockID"),
				AttributeType: aws.String("S"),
			},
		},
		KeySchema:              []*dynamodb.KeySchemaElement{
			{
				AttributeName: aws.String("LockID"),
				KeyType: aws.String("HASH"),
			},
		},
		ProvisionedThroughput:  &dynamodb.ProvisionedThroughput{
			ReadCapacityUnits:  aws.Int64(5),
			WriteCapacityUnits: aws.Int64(5),
		},
		TableName:              aws.String(tableName),
		Tags:                   []*dynamodb.Tag{
			{
				Key:   aws.String("tfstate"),
				Value: aws.String("lockID"),
			},
		},
	})

	if err != nil {
		fmt.Printf("Unable to create table %q, %v", tableName, err)
		os.Exit(1)
	}

	fmt.Printf("Waiting for dynamoDB table %q to be created...\n", tableName)

	err = svc.WaitUntilTableExists(&dynamodb.DescribeTableInput{
		TableName: aws.String(tableName),
	})

	if err != nil {
		fmt.Printf("Error occurred while waiting for table to be created, %v", tableName+"\n")
		os.Exit(1)
	}

	fmt.Printf("Table %q successfully created\n", tableName)

}
