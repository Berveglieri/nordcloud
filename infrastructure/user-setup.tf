locals {
  policy_arns = toset(["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/AWSCodeDeployFullAccess"])
}

resource "aws_iam_user" "deployer" {
  name = "deployer"
  path = "/"

  tags = {
    Name = "all-envs"
  }
}

resource "aws_iam_access_key" "deployer" {
  user = aws_iam_user.deployer.name
}

resource "aws_iam_group" "code_deploy_access" {
  name = "codeDeployAccess"
  path = "/"
}

resource "aws_iam_user_group_membership" "deployer_to_code_deploy_access" {
  groups = [aws_iam_group.code_deploy_access.name]
  user = aws_iam_user.deployer.name
}

resource "aws_iam_group_policy_attachment" "code_deploy_permissions_to_deployer" {
  group      = aws_iam_group.code_deploy_access.name
  for_each = local.policy_arns
  policy_arn = each.value
}
