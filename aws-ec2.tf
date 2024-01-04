# Specify the AWS provider and access details
provider "aws" {
  region = "ap-south-1"
}

# Create an AWS EC2 instance
resource "aws_instance" "webApp" {
  ami = "ami-0e306788ff2473ccb"
  instance_type = "t2.micro"
  tags = {
    Name = "myTerraformInstance"
  }
}


