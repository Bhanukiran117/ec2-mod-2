variable "vpcid" {
        type = string
        default = "vpc-51141837"
}

resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  vpc_id = var.vpcid
  description = "Allow ssh connections on port 22"
  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

output "sg_id_output" {
  value = aws_security_group.allow_ssh.id
}
