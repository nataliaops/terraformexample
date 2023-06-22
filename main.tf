# --------------------------------------------------------
# Access_key, secret_key son ejemplos mios para orientarme 
# --------------------------------------------------------
provider "aws" {
  access_key = var.AWS_ACCESS_ABC123DEF456GHI789
  secret_key = var.AWS_SECRET_AbCdEfGhIjKlMnOpQrStUvWxYz1234567890
  region     = var.us-east-1
}

#Creo Servidor en EC2, la ami es un ejemplo
resource "aws_instance" "ejemplo_servidor20220623" {
  ami           = "ami-0a9239823sjask"
  instance_type = "t2.micro"
}