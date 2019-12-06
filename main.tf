provider "aws"{
    region = "ap-northeast-2"
}

resource "aws_instance" "web" {
  ami = "ami-0d59ddf55cdda6e21"
  instance_type = "t2.micro"
}
