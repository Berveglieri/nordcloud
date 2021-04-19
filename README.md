To be able to execute this challenge you need to do the following:

1 - Create a bucket to store the terraform state.\
2 - Create a table on dynamodb to hold the terraform lock.

In the pre-init folder there are binaries for the most common operating systems.
You can execute them to create the bucket, and the dynamodb table.
This is a CLI tool, if executed without any parameters the usage function will the called.

Please export the environment variable AWS_REGION before executing it.

After creating the s3 bucket, and the dynamodb table you need to run terraform in  a specific order.
As the subnets are not hardcoded, terraform can't link the IDs with the other resources
if the still do not exist, therefore you need you first create the VPC, and the subnets.

Run:

**terraform workspace new production**

**terraform apply -target=module.main_vpc -target=module.public_application_subnet -target=module.private_database_subnet**

after the creation is complete you can just run

**terraform apply**

Wait for the command to finish, and the deployment will be ready and running.

There is no domain registered, for this reason you can just copy one of the public EC2
instances name to access the running application.



