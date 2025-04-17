provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "cloud_vm" {
  ami           = "ami-12345678"
  instance_type = "t3.micro"
}
