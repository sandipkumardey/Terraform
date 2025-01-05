#Challenge2: Create an EC2 instance in AWS cloud using Terraform

#Challenge3: Create a GitHub repository using Terraform


#access key
#secret access key
#always keep your access key and secret access key in key in aws configuure command


resource "aws_instance" "web" {
  ami           = "ami-0e2c8caa4b6378d8c"  #ubuntu
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}


resource "github_repository" "example" {
  name        = "My_awesome_github_repo"
  description = "This repo is created using Terraform"

  visibility = "public"
}