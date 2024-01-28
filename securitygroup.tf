resource "aws_security_group" "group" {
  name        = var.grp
  description = "security group one"
  vpc_id = var.vpcid
  #vpc_id      = aws_vpc.main.id
  tags = {
    Name = "SGrouphw"
  }
}

resource "aws_vpc_security_group_ingress_rule" "sshport" {
  security_group_id = aws_security_group.group.id
  cidr_ipv4 = var.ipv4
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}