resource "aws_codepipeline" "app_pipeline" {
  name = "notejam_pipeline"
  role_arn = aws_iam_role.codepipeline.arn

  artifact_store {
    location = module.s3_bucket.bucket_name
    type = "S3"
  }
  stage {
    name = "Source"
    action {
      category = "Source"
      name = "Source"
      owner = "AWS"
      provider = "S3"
      output_artifacts = ["source"]
      version = "1"
      configuration = {
        S3Bucket             = module.s3_bucket.bucket_name
        S3ObjectKey          = "app.zip"
        PollForSourceChanges = "true"
      }
    }
  }

  stage {
    name = "Deploy"

    action {
      name            = "Deploy"
      category        = "Deploy"
      owner           = "AWS"
      provider        = "CodeDeploy"
      input_artifacts = ["source"]
      version         = "1"
      run_order        = 1


     configuration = {
       ApplicationName    = module.code_deploy_app.codedeploy_app_name
       DeploymentGroupName = module.app_deploy_group.code_deploy_group_name
     }
    }
  }
}