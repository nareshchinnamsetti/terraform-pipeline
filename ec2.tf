provider "aws" {
region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "myfirstec2"{
  ami = "ami-0565af6e282977273"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.instance.id}"]
  key_name = "mykey"
  user_data = <<-EOF
              #!/bin/bash
              apt-get install apache2 -y 
              echo "Hello DevOps Geeks, Welcome to Jenkins Terraform-pipeline" > /var/www/html/index.html
              apt-get update -y
              service apache2 start
              EOF

  tags { 
    Name = "Web-Server"

  }
}


resource "aws_security_group" "instance" {
  name = "terraform-security-group"
  
  # Inbound Apache from anywhere
  ingress { 
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0 
    to_port = 0 
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}


