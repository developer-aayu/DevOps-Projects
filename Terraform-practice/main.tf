   provider "aws" {
     region = "us-east-1"  # Set your desired AWS region
   }

   resource "aws_instance" "example" {
     ami           = "ami-00ce7d7f0"  # Specify an appropriate AMI ID
     instance_type = "t2.micro"
     tags = {
    Name = "Instance-name"
    }
   }