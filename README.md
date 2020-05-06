# module
#
module "wordpress-virginia" { 
source = "./module" 
region = "us-east-1" 
image_owner = "137112412989" 
desired_capacity = 1 
max_size = 1 
min_size = 1 
} 

# backend.tf
#
terraform { 
backend "s3" { 
bucket = "state-class-aidar" 
key = "path/to/my/key" 
region = "us-east-1" 
} 
} 