resource "aws_instance" "nginx_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_pair
  vpc_security_group_ids = var.vpc_security_group_ids

  user_data = file("${path.module}/../scripts/install_nginx.sh")

  tags = {
    Name = "nginx-server"
  }
}
