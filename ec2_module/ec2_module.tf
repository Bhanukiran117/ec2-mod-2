variable "amiid" {
        type = string
        default = "ami-00890f614e48ce866"
}

variable sg_id {}
variable ec2_name {}
resource "aws_instance" "bhanu_test_ec2" {

        ami = var.amiid
        instance_type = "t2.micro"
        key_name = "KeyPair-April30"
        vpc_security_group_ids  = [var.sg_id]
        tags = {
                Name = var.ec2_name
        }

}
