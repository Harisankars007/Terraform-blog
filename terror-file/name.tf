module "ec2_instance" {
  source        = "./modules/ec2"
  instance_type = "t3.micro"
  ami_id        = "ami-12345678"
}
