resource "aws_launch_configuration" "for_webserver" {
  name            = "webserver-asg-lc"
  image_id        = data.aws_ami.ubuntu.id
  instance_type   = var.WEB_SERVER_INSTANCE_TYPE
  user_data       = file(var.USER_DATA_FOR_WEBSERVER)
  security_groups = [aws_security_group.webservers.id]
  key_name        = var.PEM_FILE_WEBSERVERS
  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }
}
