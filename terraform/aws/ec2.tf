resource "aws_key_pair" "keyprivate" {
  key_name   = "keyprivate"                                     # Nombre del par de claves de AWS
  public_key = file(var.PATH_TO_PUBLIC_KEY)                 # Ruta del archivo de clave pública
}

resource "aws_instance" "instanceprueba" {
  ami           = var.AMID[var.AWS_REGION]                   # AMI para la instancia
  instance_type = "t2.micro"                                 # Tipo de instancia

  key_name      = aws_key_pair.keyprivate.key_name                # Nombre del par de claves utilizado
  }