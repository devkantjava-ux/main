# Configure the AWS Provider
provider "aws" {
  region     = "ap-south-1"
}


# to create ec2 instance
resource "aws_instance" "MyServer" {
  ami           = "ami-03695d52f0d883f65"
  instance_type = "t3.micro"
  tags = {
    Name = "MyServer"
  }
}