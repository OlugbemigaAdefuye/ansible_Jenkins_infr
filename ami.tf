data "aws_ssm_parameter" "instance_ami_ubuntu" {
  name = "/aws/service/canonical/ubuntu/server/20.04/stable/current/amd64/hvm/ebs-gp2/ami-id"
}