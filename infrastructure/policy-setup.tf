resource "aws_iam_policy" "ec2_to_s3" {
  name = "ec2_to_s3"
  path = "/"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:Get*",
          "s3:List*"
        ]
        Effect = "Allow"
        Resource = "*"
      },
    ]
  })
}

output "s3_policy_arn" {
  value = aws_iam_policy.ec2_to_s3.arn
}