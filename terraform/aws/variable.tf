#AWS access key"
variable "AWS_ACCESS_KEY" {
}

#AWS secret key"
variable "AWS_SECRET_KEY" {
}

#AWS region"
variable "AWS_REGION" {
  default = "eu-west-1"
}

#Map of AMIs by region"
variable "AMID" {
  type = map(string)
  default = {
    us-east-1 = "ami-0c94855ba95c71c99"
    us-west-2 = "ami-076515f20540e6e0b"
    eu-west-1 = "ami-01c24e6f8f0a62c5b"
  }
}

#Ruta o ubicación del archivo de clave privada utilizada para autenticarse en la instancia."
variable "PATH_TO_PRIVATE_KEY" {
  default = "keyprivate"
}

#Ruta o ubicación del archivo de clave pública asociada a la clave privada."
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
