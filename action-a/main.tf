provider "aws" {
  region     = "eu-west-1"
  access_key = $AWS_ACCESS_KEY
  secret_key = $AWS_SECRET_KEY
}

resource "aws_instance" "teste-instance" {
  ami           = "ami-06358f49b5839867c"
  instance_type = "t2.micro"
  security_groups = ["sg-5a543e21"]
  subnet_id = "subnet-41df4d37"
  key_name = "melhoresofertas"
  private_ip = "172.31.16.5"
}
