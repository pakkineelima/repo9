 resource "aws_security_group" "demo_sg" {
  name = "sec-group"
  description = "Allow HTTP and SSH traffic via Terraform"
  vpc_id = "*********"

  ingress {
    from_port   = var.from_port1
    to_port     = var.to_port1
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = var.from_port2
    to_port     = var.to_port2
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
