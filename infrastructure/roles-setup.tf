data "aws_iam_policy_document" "code_deploy_access" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      identifiers = ["ec2.amazonaws.com","autoscaling.amazonaws.com", "tag.amazonaws.com", "sns.amazonaws.com",
                      "cloudwatch.amazonaws.com"]
      type = "Service"
    }
  }
}

resource "aws_iam_role" "code_deploy_ec2" {
  name = "ServiceRoleCodeDeployEC2"
  assume_role_policy = data.aws_iam_policy_document.code_deploy_access.json
  managed_policy_arns = ["arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"]
}
