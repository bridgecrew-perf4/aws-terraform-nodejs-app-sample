# use aws provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

#configure the aws provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

#configure the aws instance
resource "aws_instance" "terraform-testing-tab" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.small"
  vpc_security_group_ids = [ "sg-0bd31de18bf04b40f" ]
  user_data = file("userdata.sh")
  tags = {
    enviroment = "playground"
    appid-or-sso = "timo8600"
    needed-until-date = "2021-12-31"
    tag-std = "v1.0"
    terraform = "test-instance"
  }
}
