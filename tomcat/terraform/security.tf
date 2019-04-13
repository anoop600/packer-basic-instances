resource "aws_security_group" "jenkins-security" {
  name        = "jenkins-security"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress{
    from_port                = 8080
    to_port                  = 8080
    protocol                 = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "packer-jenkins-security"
  }
}
