resource "aws_lb" "main" {
  name               = "${var.name}-${var.env}"
  internal           =  var.internal
  load_balancer_type =  var.load_balancer_type
  subnets            =  var.subnets

  enable_deletion_protection = var.enable_deletion_protection


  tags = merge(
    var.tags,
    { Name = "${var.name}-${var.env}" }
  )
}

#resource "aws_security_group" "main" {
#  name        = "${var.component}-${var.env}"
#  description = "${var.component}-${var.env}"
#  vpc_id      =  var.vpc_id
#
#  ingress {
#    description      = "ssh"
#    from_port        = 22
#    to_port          = 22
#    protocol         = "tcp"
#    cidr_blocks      = var.bastion_cidr
#  }
#
#  ingress {
#    description      = "APP"
#    from_port        = var.port
#    to_port          = var.port
#    protocol         = "tcp"
#    cidr_blocks      = var.allow_app_to
#  }
#
#
#  egress {
#    from_port        = 0
#    to_port          = 0
#    protocol         = "-1"
#    cidr_blocks      = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
#  }
#
#  tags = merge(
#    var.tags,
#    { Name = "${var.component}-${var.env}" }
#  )
#}