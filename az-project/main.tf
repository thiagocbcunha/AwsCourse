# Configuração do Provedor para a região US-East-1 (N. Virginia)
provider "aws" {
  region = "us-east-1"
}

# Criação de uma VPC com sub-redes em 2 AZs diferentes
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags       = { Name = "VPC-High-Availability" }
}

resource "aws_subnet" "az_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a" # Referência à AZ 1A da transcrição
}

resource "aws_subnet" "az_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b" # Referência à AZ 1B da transcrição
}