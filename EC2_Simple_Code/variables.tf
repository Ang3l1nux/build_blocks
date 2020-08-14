variable "ami_id" {
    default = "ami-08f3d892de259504d"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "subnet" {
    default = "subnet-04bb8d4c650a670bb"
}

variable "app_name" {
    default = "dev"
}

variable "num_instances" {
    default = 2
}

variable "owner_name" {
    default = "SRE"
}

variable "squad" {
    default = "tools"
}