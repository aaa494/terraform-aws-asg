provider "aws" { 
region = "${var.region}" 
# version = "2.59" 
} 

terraform { 
required_version = "0.11.14" 
backend "s3" { 
bucket = "state-class-aidar" 
key = "path/to/my/key" 
region = "us-east-1" 
} 
} 





