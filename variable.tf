
variable "region" {}

variable "instance_name" {
  type = string 
  description = "EC2 name being created for the instance"
  
}

variable "instance_type" {
  type = string 
  description = "EC2 type being created in my account"
  # default = "t2.micro"
 
}

variable "ec2_ami" {
  type = string 
  description = "Ami type being created with the ec2"
}

variable "vpc_cidr_block" {
  type = string 
  description = "Creating vpc"
  # Nickos-vpc = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  type = list(string)
  description  = "Private subnet being created"
  # default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnet_cidr" {
  type = list(string)
  description = "Public subnet being created"
  # default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

# variable "tags" {
#   type =  map(string)
#   description = "Tags to be applied in the resources/instance"
  
# }

# variable "names" {
#   description = "Names to be applied in the resources/instance"
#   type =  map(object({
#     name        = string
#     environment = string
#     location    = string
#   }))
  
# }
