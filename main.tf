provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "vm" {
  ami           = "ami-061ac2e015473fbe2"
  subnet_id     = "subnet-0cdddedbf69e12f61"
  instance_type = "t2.micro"
  tags = {
    Name = "my-first-tf-node_prem"
  }
}
