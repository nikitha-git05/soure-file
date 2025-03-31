provider "aws" {
    region = "us-east-2"
    profile = "jenkins"
    shared_credentials_files = ["/var/.aws/.aws/credentials"]
}

resource "aws_instance" "terraform_instance" {
  ami = "ami-0d0f28110d16ee7d6"
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  key_name = "tester"
  tags = {
    Name = "Terraform_Instance"
  }
}
