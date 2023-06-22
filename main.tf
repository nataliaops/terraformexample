# --------------------------------------------------------
# Access_key, secret_key son ejemplos mios para orientarme 
# --------------------------------------------------------
provider "aws" {
  access_key = var.AWS_ACCESS_ABC123DEF456GHI789
  secret_key = var.AWS_SECRET_AbCdEfGhIjKlMnOpQrStUvWxYz1234567890
  region     = var.us-east-1
}

# ----------------------------------------------------
# Data Source para obtener el ID de la VPC por defecto
# ----------------------------------------------------
data "aws_vpc" "default" {
  default = true
}

# -------------------------------------------------------------
# Hago una instancia EC2 con AMI "Ubuntu"- Es una AMI inventada
# -------------------------------------------------------------
resource "aws_instance" "pruebaEC202306" {
  ami                    = "ami-8998kasdjsk93423"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.gruposeguridad1.id]

  // Escribimos un "here document" que es
  // usado durante la inicialización
  user_data = <<-EOF
              #!/bin/bash
              echo "trasteo con terraform para pruebas nuevo proyecto" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  tags = {
    Name = "servidor-one"
  }
}

# ------------------------------------------------------
# Defino un grupo de seguridad con acceso al puerto 8080
# ------------------------------------------------------
resource "aws_security_group" "gruposeguridad1" {
  name   = "trasteoterraform"
  vpc_id = data.aws_vpc.default.id
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Acceso al puerto 8080 desde el exterior"
    from_port   = 8080
    to_port     = 8080
    protocol    = "TCP"
  }
}