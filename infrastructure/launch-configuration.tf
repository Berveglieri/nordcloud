module "launch_configuration" {
  source = "./launch-configuration/launch_configuration"
  configuration = var.launch_configuration["launch_configuration"]
  security_group = [module.default-sg.security_group_id]
  iam_instance_profile = aws_iam_instance_profile.ec2_to_s3.name
}