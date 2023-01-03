#Restrict Default VPC SG
resource "aws_default_security_group" "restrict_dsg" {
  vpc_id = module.vpc.vpc_id

  ingress {
    protocol = -1
    self = true
    from_port = 0
    to_port = 0
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
}
