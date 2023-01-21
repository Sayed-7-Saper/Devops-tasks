# Adding the region as a variable, used in provider.tf
variable "region" {
  type    = string
  description = "this is the region where we will build our machine, region is saved in tfvars"
}

# Adding the ami as a variable, used in main.tf 
variable "ami" {
  type    = string
  default = "ami-026e72e4e468afa7b"
}

# Create terraform.tfvars and add your public ssh key in 
variable "public_key" {
  description = "ssh public key"
  default =  "test2-helm"
}