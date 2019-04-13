resource "aws_instance" "web" {
  ami           = "ami-0ee28afc4d770ea55"
  instance_type = "t2.small"
  key_name = "devops-jan"
  security_groups = ["${aws_security_group.jenkins-security.name}"]
  tags = {
    Name = "Packer-Jenkin"
  }
}
