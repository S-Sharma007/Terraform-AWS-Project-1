
resource "aws_vpc" "Project_resume" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = "true"
  enable_dns_support   = "true"

  tags = {
    Name = "Project_resume"
  }
}


resource "aws_subnet" "pbsubnet" {
  vpc_id            = aws_vpc.Project_resume.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ca-central-1b"

  tags = {
    Name = "pbsubnet"
  }
}

resource "aws_subnet" "prsubnet" {
  vpc_id            = aws_vpc.Project_resume.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ca-central-1d"

  tags = {
    Name= "prsubnet"
  }
}