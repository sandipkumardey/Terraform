#Challenge2: Create an EC2 instance in AWS cloud using Terraform

#Challenge3: Create a GitHub repository using Terraform


#access key
#secret access key
#always keep your access key and secret access key in key in aws configuure command


resource "aws_instance" "web" {
  ami           = "var.os"  #ubuntu
  instance_type = "var.size"

  tags = {
    Name = var.name
  }
}

#s3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucketname
}

#prod-user
#staging-user
resource "aws_iam_user" "myuser" {
  name = "${var.username}-user"
}

output "IPaddress" {
  value = aws_instance.web.public_ip
}

output "DNS" {
  value = aws_instance.web.public_dns
}