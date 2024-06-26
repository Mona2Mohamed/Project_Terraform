resource "aws_Security_group" "web_sg" {
  name      ="HTTP and SSH"
  vpc_id = var.vpc_variable

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_block  = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_block  = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_block  = ["0.0.0.0/0"]
  }
}