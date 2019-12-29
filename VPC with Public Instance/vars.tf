variable "AWS_REGION" {
  default = "eu-west-1"
}
# this ssh private key this compulsory to ssh AWS instance
# I create ssh key by ssh-keygen -f command in my working directory
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

