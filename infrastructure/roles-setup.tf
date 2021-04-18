data "aws_iam_policy_document" "code_deploy_access" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      identifiers = ["ec2.amazonaws.com","autoscaling.amazonaws.com", "tag.amazonaws.com", "sns.amazonaws.com",
                      "cloudwatch.amazonaws.com", "codedeploy.amazonaws.com"]
      type = "Service"
    }
  }
}

data "aws_iam_policy_document" "e2-to-s3" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      identifiers = ["ec2.amazonaws.com","s3.amazonaws.com", "codedeploy.amazonaws.com", "sns.amazonaws.com"]
      type = "Service"
    }
  }
}

data "aws_iam_policy_document" "codepipeline" {
    statement {
      actions = ["sts:AssumeRole"]

      principals {
        identifiers = ["codepipeline.amazonaws.com"]
        type = "Service"
      }
    }
  }

resource "aws_iam_role" "code_deploy_ec2" {
  name = "ServiceRoleCodeDeployEC2"
  assume_role_policy = data.aws_iam_policy_document.code_deploy_access.json
  managed_policy_arns = ["arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"]
}

resource "aws_iam_role" "ec2_to_s3" {
  name = "EC2ToS3"
  assume_role_policy = data.aws_iam_policy_document.e2-to-s3.json
  managed_policy_arns = [aws_iam_policy.ec2_to_s3.arn]
}

resource "aws_iam_role" "codepipeline" {
  assume_role_policy = data.aws_iam_policy_document.codepipeline.json
  managed_policy_arns = [aws_iam_policy.code_pipeline.arn]
}