variable "AWS_ACCESS_KEY" {
  description = "AWS access key"
}

variable "AWS_SECRET_KEY" {
  description = "AWS secret key"
}

variable "AWS_REGION" {
  description = "AWS region"
  default = "eu-west-2"
}

variable "EC2" {
  description = "Map of AMIs by region"
  type = map(string)
  default = {
    us-east-1 = "ami-0c94855ba95c71c99"
    us-west-2 = "ami-076515f20540e6e0b"
    eu-west-1 = "ami-01c24e6f8f0a62c5b"
  }
}
