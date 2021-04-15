data "aws_ami" "amz_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  owners = ["amazon"]
}

resource "aws_launch_configuration" "config" {
  image_id = data.aws_ami.amz_linux.id
  instance_type = var.instance

  lifecycle {
    create_before_destroy = true
  }

  user_data = <<-EOF
      #!/bin/bash
      exec > /tmp/init.log 2>&1
      sudo yum update -y
      sudo yum install ruby -y
      cd /home/ec2-user
      wget https://aws-codedeploy-eu-central-1.s3.eu-central-1.amazonaws.com/latest/install
      chmod +x ./install
      sudo ./install auto
      EOF

  enable_monitoring = false
  key_name = "test-deploy"

  security_groups = var.security_group
}
