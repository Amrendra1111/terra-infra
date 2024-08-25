# Specify the provider
provider "aws" {
  region = "ap-south-1"
}

# Define an EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-025fe52e1f2dc5044" # Amazon Linux 2 AMI (you can change this)
  instance_type = "t2.micro"

  # Add tags to the instance
  tags = {
    Name = "Terra Example"
  }
}

resource "aws_vpc" "my_vpc"{
  cidr_block ="10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
   Name = "my-vpc"
  }
}