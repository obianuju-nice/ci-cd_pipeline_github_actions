
# Create VPC
resource "aws_vpc" "nickos_vpc" {
  # name                = "devops_vpc"
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
 
  tags = {
    name        = "Nickos-Vpc"
    Environment = "Development"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.internet_gateway.id
}

# Create Private Subnet
resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.nickos_vpc.id
  tags                  = { Name = "Nickos_private_Subnet${index(var.private_subnet_cidr, each.value) + 1}" }
  for_each                = toset(var.private_subnet_cidr)
  cidr_block              = each.value
  # cidr_block              = var.private_subnet_cidr
  availability_zone       = ["us-west-2a","us-west-2b"]
  map_public_ip_on_launch = true

}

# Create Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  tags                  = { Name = "Nickos_public_Subnet${index(var.public_subnet_cidr, each.value) + 1}" }
  for_each                = toset(var.public_subnet_cidr)
  cidr_block              = each.value
  availability_zone       = ["us-west-2a","us-west-2b"]
  map_public_ip_on_launch = true

}




