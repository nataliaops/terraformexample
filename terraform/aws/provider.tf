provider "aws" {
  access_key = var.AWS_ACCESS_KEY         # Clave de acceso de AWS proporcionada como variable
  secret_key = var.AWS_SECRET_KEY         # Clave secreta de AWS proporcionada como variable
  region     = var.AWS_REGION             # Región de AWS proporcionada como variable
}