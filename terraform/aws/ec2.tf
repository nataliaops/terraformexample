resource "aws_instance" "ec2pruebaproyecto" {
  ami           = lookup(var.EC2, var.AWS_REGION, "")
  instance_type = "t2.micro"
}