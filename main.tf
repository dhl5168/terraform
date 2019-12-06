provider "aws"{
    region = "ap-northeast-2"
}

resource "aws_instance" "web" {
  ami = "ami-0d59ddf55cdda6e21"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ssh.key_name
}

resource "aws_key_pair" "ssh" {
  key_name   = "admin"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeAav2bZTf/4CaW3vDoBQTTlpGtzileCPU2dcJUR2xZCpr25b1ybR2hUibukfYUHzb+ZfhEFiTTgp6LbGJTwHshUUmFNqRGbCEk+W9fRErhY0kE8rXlRSXXo5JqX2BYbmSQCmRfTitYTVCIVWopekKhabndkOgHWd6EGokXWOhKPo+HegoX1MLuW6hyNq1cEeM8j/A9V8F0MkuusDOyf2TalNMue3EZ8MlijqDSpJ2tg3IB3hZOBz0BKrRAJed4Whz4tzuwhNYgvgoaa9X2aXMkfZINGqMmEI90EmRC9dCkzPSTCwusWRNyABcEyNrsoie0a7DVkbhIrq87Ncynvt9 dennis@EPCNSZXW0188"
}

resource "aws_security_group_rule" "ssh" {
  type          = "ingress"
  from_port     = 22
  to_port       = 22
  protocol      = "tcp"
  cidr_blocks   = ["0.0.0.0/0"]
  security_group_id = "sg-asdf2342"
}
