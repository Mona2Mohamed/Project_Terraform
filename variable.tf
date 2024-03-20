# variable "Y"{
#   description = "x varibale"
# }
# variable "defaultvpc_id" {
#   description = "its the ID for default VPC"  
# }
variable "vpc_variable" {
    description = "vpc cdir block"
    type = string  
}

variable "public_subnet" {
    description = "public_subnet"
    type = string
}

variable "private_subnet" {
    description = "private_sunbet"
    type = string
}
