resource "aws_key_pair" "us-east-1-key" { 
key_name = "asg-key-pair" 
public_key = "${file("~/.ssh/id_rsa.pub")}" 
} 

resource "aws_security_group" "asg-sec-group" { 
name = "asg-sec-group" 
description = "Allow TLS inbound traffic" 
ingress { 
description = "TLS from VPC" 
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
tags = { 
Name = "allow_tls" 
} 
} 