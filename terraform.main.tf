resource "aws_instance" "task3-ec2" {

  ami           = "ami-019715e0d74f695be"

  instance_type = "t3.small"

  vpc_security_group_ids = [
    aws_security_group.ssh_sg.id
  ]
  key_name = aws_key_pair.Tf_key.key_name

  tags = {

    Name = "task3-ec2"

  }

}

resource "aws_security_group" "ssh_sg" {
  name = "allow-ssh-strapi"

  # SSH Access
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Strapi Access
  ingress {
    description = "Strapi"
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
