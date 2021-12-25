provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "main" {
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "tuts vpc"
  }
}

resource "aws_subnet" "web" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "aws subnet"
  }
}
resource "aws_instance" "vm" {
  ami           = "ami-0ed9277fb7eb570c9"
 # subnet_id     = "subnet-0cdddedbf69e12f61"
  instance_type = "t2.micro"
  tags = {
    Name = "my-first-tf-node-prem"
  }
}
