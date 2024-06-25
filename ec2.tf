resource "aws_instance" "app_servers" {
  ami             = data.aws_ssm_parameter.instance_ami_ubuntu.value
  count           = 1
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.my_public_subnet02.id
  security_groups = [aws_security_group.ak-sg.id]
  key_name        = var.key_name

  tags = {
    Name = "jenkins_server"
  }

}
