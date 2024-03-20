# random number for naming
resource  "random_id" "id" {
  byte_length = 1
}

# Create VPC
resource "aws_vpc" "main_vpc" {
    cidr_block = var.vpc_variable

    tags = {
      Name = "vpc_${random_id.id.hex}"
    }
}

# Create  public subnet
resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = var.public_subnet
  map_public_ip_on_launch = true

  tags = {
    Name = "Public_Subnet-${random_id.id.hex}"
  }
}

# Create  private subnet
resource "aws_subnet" "private" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = var.private_subnet


  tags = {
    Name = "Private_Subnet-${random_id.id.hex}"
  }
}