
resource "aws_instance" "nickos_server" {
  ami                   =   var.ec2_ami
  instance_type         =   var.instance_type
  
  tags = {
    Name = "Nickos-server"
  }
}

# resource "aws_instance" "nickos_server" {  
#   for_each                = toset(var.instance_name)    # using for_each to iterate/loop over the instance names
#   instance_type          =  each.value.instance_type
#   tags                    = { Name = "Nickos-Server${index(var.instance_name, each.value) + 1}" }                               
#   ami           = var.ec2_ami                            # get the ami from the console
#   # instance_type = var.instance_type 
# }

# resource "aws_instance" "nickos_server" {
#   count                = length(var.instance_name)       # using count to iterate/loop over the instance names
#   instance_type        = var.instance_type[count.index]
#   tags                 = { Name = "Nickos-Server-${count.index}" }
#   ami                  = var.ec2_ami                            # get the ami from the console
  
  # tags  {
  #   name   =  "Nickos_server-${each.key}" 
  # }

# }





