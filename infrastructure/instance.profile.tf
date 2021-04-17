resource "aws_iam_instance_profile" "ec2_to_s3" {
  name = "EC2_to_S3"
  role = aws_iam_role.ec2_to_s3.name
}