package main

import (
	"flag"
	"github.com/nordcloud/challenge/dynamodb/table/dynamo"
)

var (
	tableName string
)

func main() {

		flag.StringVar(&tableName,"table","","please specify the table name to store the terraform state lock")
		flag.Parse()

		if tableName != "" {
			dynamo.CreateTable(tableName)
		} else {
			flag.Usage()
		}
	}
