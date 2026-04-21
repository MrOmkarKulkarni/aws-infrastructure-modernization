provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "backup" {
  bucket = "enterprise-backup-demo-12345"
}

resource "aws_instance" "web" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "Prod-Web"
  }
}
