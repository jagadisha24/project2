provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "jenkins_server" {
  ami           = "ami-0614680123427b75e" # Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = "your-key-pair"
  tags = {
    Name = "JenkinsServer"
  }
}

resource "aws_instance" "react_app_server" {
  ami           = "ami-0614680123427b75e"
  instance_type = "t2.micro"
  key_name      = "your-key-pair"
  tags = {
    Name = "ReactAppServer"
  }
}
